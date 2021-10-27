<%-- Document : solteiro Created on : 21 de out de 2021, 20:53:08 Author :
fabinho --%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@include file="connectionDBLoc.jsp"%>--%> <%@include
file="connectionDBWeb.jsp" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta
      name="author"
      content="Mark Otto, Jacob Thornton, and Bootstrap contributors"
    />
    <meta name="generator" content="Hugo 0.88.1" />
    <title>Pizzaria Piratas do Karibe</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css"
    />
    <script src="js/bootstrap.js"></script>

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    <!-- Custom styles for this template -->
    <link href="css/pricing.css" rel="stylesheet" />
  </head>
  <body>
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none">
      <symbol id="check" viewBox="0 0 16 16">
        <title>Check</title>
        <path
          d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"
        />
      </symbol>
    </svg>

    <div class="container py-3">
      <header>
        <div
          class="
            d-flex
            flex-column flex-md-row
            align-items-center
            pb-3
            mb-4
            border-bottom
          "
        >
          <a
            href="/"
            class="d-flex align-items-center text-dark text-decoration-none"
          >
            <!--<svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" class="me-2" viewBox="0 0 118 94" role="img"><title>Bootstrap</title><path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z" fill="currentColor"></path></svg>-->
            <img
              src="assets/brand/logo_v1.png"
              alt=""
              width="150"
              height="75"
              class="
                d-inline-block
                align-text-top
                me-3
                border-end border-bottom
                rounded
              "
            />
            <span class="fs-4">Piratas do Karibe</span>
          </a>
          <nav class="d-inline-flex mt-2 mt-md-0 ms-md-auto">
            <a
              class="me-3 py-2 text-dark text-decoration-none"
              href="planos.jsp"
              >Planos</a
            >
            <a
              class="me-3 py-2 text-dark text-decoration-none"
              href="empresa.html"
              >Empresa</a
            >
            <!--                    <a class="me-3 py-2 text-dark text-decoration-none" href="#"
                       >Suporte</a
                    >
                    <a class="me-3 py-2 text-dark text-decoration-none" href="#"
                       >Menu</a
                    >-->
            <a class="py-2 text-dark text-decoration-none" href="cadastro.html"
              >Cadastro</a
            >
          </nav>
        </div>

        <!--cards-->
        <div class="row row-cols-1 row-cols-md-3 g-4">
          <div class="col">
            <div class="card h-75">
              <img
                src="assets/img/pizza_01.jpg"
                class="card-img-top"
                alt="..."
              />
              <div class="card-body">
                <h5 class="card-title">Pizzaria Temática</h5>
                <p class="card-text">
                  Para atender as necessidades de todo o público que são adeptos
                  de uma boa massa e gostam de experimentar algo novo. Como uma
                  boa pizzaria com tema temático, num estilo de Piratas algo
                  totalmente diferente de uma pizzaria habitual com a decoração
                  colonial e medieval.
                </p>
              </div>
              <!-- <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div> -->
            </div>
          </div>
          <div class="col">
            <div class="card h-100">
              <img
                src="assets/img/franquia.jpg"
                class="card-img-top"
                alt="Foto de Arturo Anez no Pexels"
              />
              <div class="card-body">
                <h5 class="card-title">Rede de Franquias</h5>
                <p class="card-text">
                  Além da sede própria teremos também as redes dos franqueados,
                  que contará com todos os requintes da sede própria. Contando
                  com um ambiente familiar, músicas ao vivo os nossos garçons
                  com trajes de piratas e buscando o cliente até a mesa para
                  dançar, ambiente rústico; pizzas saborosas além de outras
                  especiarias, uma rodada de Rum como cortesia da casa além da
                  sua imaginação que vai fazer uma viagem aos tempos medievais
                  dos piratas algo nunca visto antes e inimaginável uma magia
                  pura.
                </p>
              </div>
              <!-- <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div> -->
            </div>
          </div>
          <div class="col">
            <div class="card h-75">
              <img
                src="assets/img/planos.jpg"
                class="card-img-top"
                alt="Foto de Tima Miroshnichenko no Pexels"
              />
              <div class="card-body">
                <h5 class="card-title">Planos mensais</h5>
                <p class="card-text">
                  Como grande diferencial, nossa pizzaria é pioneira no sistema
                  de venda de pizzas sob demanda, ou seja, você assina um plano
                  e além de comer uma boa pizza também terá bônus e descontos
                  exclusivos. Então não fique de fora e assine o plano que
                  melhor te agrada, quer você seja uma pessoa ou uma família, a
                  Piratas do Karibe tem a melhor opção para você.
                </p>
              </div>

              <!-- <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div> -->
            </div>
          </div>
        </div>
        <!--cards-->
      </header>

      <footer class="pt-4 my-md-5 pt-md-5 border-top">
        <div class="row">
          <div class="col-12 col-md">
            <img
              class="mb-2"
              src="assets/brand/bootstrap-logo.svg"
              alt=""
              width="24"
              height="19"
            />
            <small class="d-block mb-3 text-muted">&copy; 2017–2021</small>
          </div>
          <div class="col-6 col-md">
            <h5>Features</h5>
            <ul class="list-unstyled text-small">
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Cool stuff</a
                >
              </li>
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Random feature</a
                >
              </li>
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Team feature</a
                >
              </li>
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Stuff for developers</a
                >
              </li>
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Another one</a
                >
              </li>
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Last time</a
                >
              </li>
            </ul>
          </div>
          <div class="col-6 col-md">
            <h5>Resources</h5>
            <ul class="list-unstyled text-small">
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Resource</a
                >
              </li>
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Resource name</a
                >
              </li>
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Another resource</a
                >
              </li>
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Final resource</a
                >
              </li>
            </ul>
          </div>
          <div class="col-6 col-md">
            <h5>About</h5>
            <ul class="list-unstyled text-small">
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#">Team</a>
              </li>
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Locations</a
                >
              </li>
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Privacy</a
                >
              </li>
              <li class="mb-1">
                <a class="link-secondary text-decoration-none" href="#"
                  >Terms</a
                >
              </li>
            </ul>
          </div>
        </div>
      </footer>
    </div>

    <% if(con!=null)out.print("ok"); %>
  </body>
</html>
