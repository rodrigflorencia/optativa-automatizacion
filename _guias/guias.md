---
layout: page
title: Guías
nav_order: 3
---

<div class="container mt-4">
    <div class="row g-4">
        <!-- Configurar Google -->
        <div class="col-12">
            <div class="card shadow-sm">
                <div class="card-header bg-light">
                    <h5 class="mb-0">Configurar Google</h5>
                </div>
                <div class="card-body p-0">
                    <iframe
                        src="{{ '/assets/pdfs/Configurar Google.pdf' | relative_url }}"
                        width="100%" 
                        height="600px"
                        style="border: none;"
                        allowfullscreen>
                    </iframe>
                </div>
                <div class="card-footer text-end">
                    <a href="{{ '/assets/pdfs/Configurar Google.pdf' | relative_url }}" class="btn btn-sm btn-outline-primary" download>
                        <i class="bi bi-download me-1"></i>Descargar
                    </a>
                </div>
            </div>
        </div>

        <!-- Guía Práctica -->
        <div class="col-12">
            <div class="card shadow-sm">
                <div class="card-header bg-light">
                    <h5 class="mb-0">Guía Práctica</h5>
                </div>
                <div class="card-body p-0">
                    <iframe 
                        src="{{ '/assets/pdfs/Informes.pdf' | relative_url }}" 
                        width="100%" 
                        height="600px"
                        style="border: none;"
                        allowfullscreen>
                    </iframe>
                </div>
                <div class="card-footer text-end">
                    <a href="{{ '/assets/pdfs/Informes.pdf' | relative_url }}" class="btn btn-sm btn-outline-primary" download>
                        <i class="bi bi-download me-1"></i>Descargar
                    </a>
                </div>
            </div>
        </div>

        <!-- Guía Práctica 3 -->
        <div class="col-12">
            <div class="card shadow-sm">
                <div class="card-header bg-light">
                    <h5 class="mb-0">Guía Práctica 3</h5>
                </div>
                <div class="card-body p-0">
                    <iframe 
                        src="{{ '/assets/pdfs/Web scraping.pdf' | relative_url }}" 
                        width="100%" 
                        height="600px"
                        style="border: none;"
                        allowfullscreen>
                    </iframe>
                </div>
                <div class="card-footer text-end">
                    <a href="{{ '/assets/pdfs/Web scraping.pdf' | relative_url }}" class="btn btn-sm btn-outline-primary" download>
                        <i class="bi bi-download me-1"></i>Descargar
                    </a>
                </div>
            </div>
        </div>

        <!-- Guía Práctica 4 -->
        <div class="col-12">
            <div class="card shadow-sm">
                <div class="card-header bg-light">
                    <h5 class="mb-0">Guía Práctica 4</h5>
                </div>
                <div class="card-body p-0">
                    <iframe 
                        src="{{ '/assets/pdfs/Informes.pdf' | relative_url }}" 
                        width="100%" 
                        height="600px"
                        style="border: none;"
                        allowfullscreen>
                    </iframe>
                </div>
                <div class="card-footer text-end">
                    <a href="{{ '/assets/pdfs/Informes.pdf' | relative_url }}" class="btn btn-sm btn-outline-primary" download>
                        <i class="bi bi-download me-1"></i>Descargar
                    </a>
                </div>
            </div>
        </div>
        <div class="col-12">
            <div class="card h-100">
                <div class="card-header">
                    <h5 class="mb-0">Guía Práctica 4</h5>
                </div>
                <div class="card-body p-0">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe 
                            src="{{ '/assets/pdfs/ProyectoFinal.pdf' | relative_url }}" 
                            class="embed-responsive-item" 
                            style="width: 100%; height: 500px; border: none;">
                        </iframe>
                    </div>
                    <div class="text-center py-1">
                        <a href="{{ '/assets/pdfs/ProyectoFinal.pdf' | relative_url }}" class="btn btn-xs btn-outline-secondary" download>
                            <i class="bi bi-download me-1"></i>Descargar
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    .card {
        border-radius: 8px;
        overflow: hidden;
        margin-bottom: 2rem;
        transition: transform 0.2s ease-in-out, box-shadow 0.2s ease-in-out;
    }

    .card:hover {
        transform: translateY(-2px);
        box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15) !important;
    }

    .card-header {
        background-color: #f8f9fa !important;
        border-bottom: 1px solid #e9ecef;
        padding: 1rem 1.25rem;
    }

    .card-header h5 {
        font-weight: 600;
        color: #212529;
        margin: 0;
    }

    .card-footer {
        background-color: #f8f9fa;
        border-top: 1px solid #e9ecef;
        padding: 0.75rem 1.25rem;
    }

    .btn-sm {
        padding: 0.25rem 0.5rem;
        font-size: 0.875rem;
        line-height: 1.5;
        border-radius: 0.2rem;
    }

    .btn-outline-primary {
        color: #0d6efd;
        border-color: #0d6efd;
    }

    .btn-outline-primary:hover {
        color: #fff;
        background-color: #0d6efd;
        border-color: #0d6efd;
    }
</style>
