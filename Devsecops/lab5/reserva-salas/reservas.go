package main

import (
	"fmt"
	"net/http"
	"os"

	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promhttp"
)

var (
	// Definindo um contador simples como exemplo
	requestsTotal = prometheus.NewCounterVec(
		prometheus.CounterOpts{
			Name: "myapp_requests_total",
			Help: "Total number of requests",
		},
		[]string{"method", "path"},
	)
)

func init() {
	// Registrando o contador de métricas no Prometheus
	prometheus.MustRegister(requestsTotal)
}

func main() {
	greeting := os.Getenv("MESSAGE")
	if greeting == "" {
		greeting = "Hello, World!"
	}

	// Rotas para a aplicação
	http.HandleFunc("/", handler(greeting))
	http.Handle("/metrics", promhttp.Handler())

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	fmt.Printf("Listening on port %s...\n", port)
	http.ListenAndServe(":"+port, nil)
}

// Handler para o endpoint principal
func handler(greeting string) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		// Incrementando o contador de métricas
		requestsTotal.WithLabelValues(r.Method, r.URL.Path).Inc()

		fmt.Fprintf(w, "%s\n", greeting)
	}
}
