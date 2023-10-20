<%--<%
    if (session.getAttribute("name") == null){
        response.sendRedirect("login.jsp");
    }
%>--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!-- Coding by CodingNepal | www.codingnepalweb.com -->
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title> Responsiive Admin Dashboard | CodingLab </title>
    <link rel="stylesheet" href="../assets/style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--    tailwind--%>
    <script src="https://cdn.tailwindcss.com"></script>

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tw-elements/dist/css/tw-elements.min.css" />
    <style>
        /* The container must be positioned relative: */
        .custom-select {
            position: relative;
            font-family: Arial;
            border-radius: initial;
        }

        .custom-select select {
            display: none; /*hide original SELECT element: */
        }

        .select-selected {
            background-color: DodgerBlue;
        }

        /* Style the arrow inside the select element: */
        .select-selected:after {
            position: absolute;
            content: "";
            top: 14px;
            right: 10px;
            width: 0;
            height: 0;
            border: 6px solid transparent;
            border-color: #fff transparent transparent transparent;
        }

        /* Point the arrow upwards when the select box is open (active): */
        .select-selected.select-arrow-active:after {
            border-color: transparent transparent #fff transparent;
            top: 7px;
        }

        /* style the items (options), including the selected item: */
        .select-items div,.select-selected {
            color: #ffffff;
            padding: 8px 16px;
            border: 1px solid transparent;
            border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
            cursor: pointer;
            border-radius: 2rem;
        }

        /* Style items (options): */
        .select-items {
            position: absolute;
            background-color: DodgerBlue;
            top: 100%;
            left: 0;
            right: 0;
            z-index: 99;
            border-radius: 2rem;
        }

        /* Hide the items when the select box is closed: */
        .select-hide {
            display: none;
        }

        .select-items div:hover, .same-as-selected {
            background-color: rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

<div class="sidebar">
    <div class="logo-details">
        <i class='bx bxl-c-plus-plus'></i>
        <span class="logo_name">CodingLab</span>
    </div>
    <ul class="nav-links">
        <li>
            <a href="#" class="active">
                <i class='bx bx-grid-alt' ></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-box' ></i>
                <span class="links_name">Product</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-list-ul' ></i>
                <span class="links_name">Order list</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-pie-chart-alt-2' ></i>
                <span class="links_name">Analytics</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-coin-stack' ></i>
                <span class="links_name">Stock</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-book-alt' ></i>
                <span class="links_name">Total order</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-user' ></i>
                <span class="links_name">Team</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-message' ></i>
                <span class="links_name">Messages</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-heart' ></i>
                <span class="links_name">Favrorites</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-cog' ></i>
                <span class="links_name">Setting</span>
            </a>
        </li>
        <li class="log_out">
            <a href="../login.jsp">
                <i class='bx bx-log-out'></i>
                <span class="links_name">Log out</span>
            </a>
        </li>
    </ul>
</div>


<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Dashboard</span>
        </div>
        <div class="search-box">
            <input type="text" placeholder="Search...">
            <i class='bx bx-search' ></i>
        </div>
        <div class="profile-details">
            <img src="images/profile.jpg" alt="">
            <span class="admin_name">Prem Shahi</span>
            <i class='bx bx-chevron-down' ></i>
        </div>
    </nav>

    <div class="home-content m-2">
        <div class="overview-boxes">
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Order</div>
                    <div class="number">40,876</div>
                    <div class="indicator">
                        <i class='bx bx-up-arrow-alt'></i>
                        <span class="text">Up from yesterday</span>
                    </div>
                </div>
                <i class='bx bx-cart-alt cart'></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Sales</div>
                    <div class="number">38,876</div>
                    <div class="indicator">
                        <i class='bx bx-up-arrow-alt'></i>
                        <span class="text">Up from yesterday</span>
                    </div>
                </div>
                <i class='bx bxs-cart-add cart two' ></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Profit</div>
                    <div class="number">$12,876</div>
                    <div class="indicator">
                        <i class='bx bx-up-arrow-alt'></i>
                        <span class="text">Up from yesterday</span>
                    </div>
                </div>
                <i class='bx bx-cart cart three' ></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Return</div>
                    <div class="number">11,086</div>
                    <div class="indicator">
                        <i class='bx bx-down-arrow-alt down'></i>
                        <span class="text">Down From Today</span>
                    </div>
                </div>
                <i class='bx bxs-cart-download cart four' ></i>
            </div>
        </div>
<%--        card--%>
        <div class="card-list">
            <div  class="card-item">
                <img src="../images/developer.png" alt="Card Image">
                <span class="developer">Developer</span>

                <form action="../GetEquipment" method="post">
                    <div class="custom-select developer" style="width:200px;">
                        <select name="selectedCar" id="carSelect">
                            <option value="0">Select car:</option>
                            <option value="1">Audi</option>
                            <option value="2">BMW</option>
                        </select>
                    </div>
                    <input type="submit" value="Submit">
                </form>

                <h3>A "developer" codes software and websites.</h3>
                <div class="arrow">
                    <i class="fas fa-arrow-right card-icon"></i>
                </div>
            </div>
            <a href="#" class="card-item">
                <img src="images/designer.jpg" alt="Card Image">
                <span class="designer">Designer</span>
                <h3>A "designer" is a design expert.</h3>
                <div class="arrow">
                    <i class="fas fa-arrow-right card-icon"></i>
                </div>
            </a>
            <a href="#" class="card-item">
                <img src="images/editor.jpg" alt="Card Image">
                <span class="editor">Editor</span>
                <h3>An "editor" ensures content quality and accuracy.</h3>
                <div class="arrow">
                    <i class="fas fa-arrow-right card-icon"></i>
                </div>
            </a>
        </div>

<%--        <div class="block rounded-lg bg-white w-[16rem] shadow-[0_2px_15px_-3px_rgba(0,0,0,0.07),0_10px_20px_-2px_rgba(0,0,0,0.04)] ">--%>
<%--                    <a href="#!">--%>
<%--                        <img--%>
<%--                                class="rounded-t-lg"--%>
<%--                                src="https://tecdn.b-cdn.net/img/new/standard/nature/184.jpg"--%>
<%--                                alt="" />--%>
<%--                    </a>--%>
<%--&lt;%&ndash;        drop down btn &ndash;%&gt;--%>
<%--            <div class="relative" data-te-dropdown-ref>--%>
<%--                <button--%>
<%--                        class="flex items-center whitespace-nowrap rounded bg-primary-600 px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-[0_4px_9px_-4px_#3b71ca] transition duration-150 ease-in-out hover:bg-primary-600 hover:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] focus:bg-primary-600 focus:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] focus:outline-none focus:ring-0 active:bg-primary-700 active:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] motion-reduce:transition-none  "--%>
<%--                        type="button"--%>
<%--                        id="dropdownMenuButton1"--%>
<%--                        data-te-dropdown-toggle-ref--%>
<%--                        aria-expanded="false"--%>
<%--                        data-te-ripple-init--%>
<%--                        data-te-ripple-color="light">--%>
<%--                    Dropdown button--%>
<%--                    <span class="ml-2 w-2">--%>
<%--<svg--%>
<%--      xmlns="http://www.w3.org/2000/svg"--%>
<%--      viewBox="0 0 20 20"--%>
<%--      fill="currentColor"--%>
<%--      class="h-5 w-5">--%>
<%--<path--%>
<%--        fill-rule="evenodd"--%>
<%--        d="M5.23 7.21a.75.75 0 011.06.02L10 11.168l3.71-3.938a.75.75 0 111.08 1.04l-4.25 4.5a.75.75 0 01-1.08 0l-4.25-4.5a.75.75 0 01.02-1.06z"--%>
<%--        clip-rule="evenodd" />--%>
<%--</svg>--%>
<%--</span>--%>
<%--                </button>--%>
<%--                <ul--%>
<%--                        class="absolute z-[1000] float-left m-0 hidden min-w-max list-none overflow-hidden rounded-lg border-none bg-white bg-clip-padding text-left text-base shadow-lg "--%>
<%--                        aria-labelledby="dropdownMenuButton1"--%>
<%--                        data-te-dropdown-menu-ref>--%>
<%--                    <li>--%>
<%--                        <a--%>
<%--                                class="block w-full whitespace-nowrap bg-transparent px-4 py-2 text-sm font-normal text-neutral-700 hover:bg-neutral-100 active:text-neutral-800 active:no-underline disabled:pointer-events-none disabled:bg-transparent disabled:text-neutral-400 "--%>
<%--                                href="#"--%>
<%--                                data-te-dropdown-item-ref--%>
<%--                        >Action</a--%>
<%--                        >--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a--%>
<%--                                class="block w-full whitespace-nowrap bg-transparent px-4 py-2 text-sm font-normal text-neutral-700 hover:bg-neutral-100 active:text-neutral-800 active:no-underline disabled:pointer-events-none disabled:bg-transparent disabled:text-neutral-400 "--%>
<%--                                href="#"--%>
<%--                                data-te-dropdown-item-ref--%>
<%--                        >Another action</a--%>
<%--                        >--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a--%>
<%--                                class="block w-full whitespace-nowrap bg-transparent px-4 py-2 text-sm font-normal text-neutral-700 hover:bg-neutral-100 active:text-neutral-800 active:no-underline disabled:pointer-events-none disabled:bg-transparent disabled:text-neutral-400 "--%>
<%--                                href="#"--%>
<%--                                data-te-dropdown-item-ref--%>
<%--                        >Something else here</a--%>
<%--                        >--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--            <div class="p-6">--%>
<%--                <h5--%>
<%--                        class="mb-2 text-xl font-medium leading-tight text-neutral-800 ">--%>
<%--                    Card title--%>
<%--                </h5>--%>
<%--                <p class="mb-4 text-base text-neutral-600 ">--%>
<%--                    Some quick example text to build on the card title and make up the--%>
<%--                    bulk of the card's content.--%>
<%--                </p>--%>
<%--                <button--%>
<%--                        type="button"--%>
<%--                        class="inline-block rounded bg-primary px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-[0_4px_9px_-4px_#3b71ca] transition duration-150 ease-in-out hover:bg-primary-600 hover:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] focus:bg-primary-600 focus:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] focus:outline-none focus:ring-0 active:bg-primary-700 active:shadow-[0_8px_9px_-4px_rgba(59,113,202,0.3),0_4px_18px_0_rgba(59,113,202,0.2)] "--%>
<%--                        data-te-ripple-init--%>
<%--                        data-te-ripple-color="light">--%>
<%--                    Button--%>
<%--                </button>--%>
<%--            </div>--%>
<%--        </div>--%>

        <div class="sales-boxes">
            <div class="top-sales box">
                <div class="title">Top Seling Product</div>
                <ul class="top-sales-details">
                    <li>
                        <a href="#">
                            <img src="images/sunglasses.jpg" alt="">
                            <span class="product">Vuitton Sunglasses</span>
                        </a>
                        <span class="price">$1107</span>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/jeans.jpg" alt="">
                            <span class="product">Hourglass Jeans </span>
                        </a>
                        <span class="price">$1567</span>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/nike.jpg" alt="">
                            <span class="product">Nike Sport Shoe</span>
                        </a>
                        <span class="price">$1234</span>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/scarves.jpg" alt="">
                            <span class="product">Hermes Silk Scarves.</span>
                        </a>
                        <span class="price">$2312</span>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/blueBag.jpg" alt="">
                            <span class="product">Succi Ladies Bag</span>
                        </a>
                        <span class="price">$1456</span>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/bag.jpg" alt="">
                            <span class="product">Gucci Womens's Bags</span>
                        </a>
                        <span class="price">$2345</span>
                    <li>
                        <a href="#">
                            <img src="images/addidas.jpg" alt="">
                            <span class="product">Addidas Running Shoe</span>
                        </a>
                        <span class="price">$2345</span>
                    </li>
                    <li>
                        <a href="#">
                            <img src="images/shirt.jpg" alt="">
                            <span class="product">Bilack Wear's Shirt</span>
                        </a>
                        <span class="price">$1245</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>

<script>

    let sidebar = document.querySelector(".sidebar");
    let sidebarBtn = document.querySelector(".sidebarBtn");
    sidebarBtn.onclick = function() {
        sidebar.classList.toggle("active");
        if(sidebar.classList.contains("active")){
            sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
        }else
            sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
    }
//     to drop down
        var x, i, j, l, ll, selElmnt, a, b, c;
        /*look for any elements with the class "custom-select":*/
        x = document.getElementsByClassName("custom-select");
        l = x.length;
        for (i = 0; i < l; i++) {
        selElmnt = x[i].getElementsByTagName("select")[0];
        ll = selElmnt.length;
        /*for each element, create a new DIV that will act as the selected item:*/
        a = document.createElement("DIV");
        a.setAttribute("class", "select-selected");
        a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
        x[i].appendChild(a);
        /*for each element, create a new DIV that will contain the option list:*/
        b = document.createElement("DIV");
        b.setAttribute("class", "select-items select-hide");
        for (j = 1; j < ll; j++) {
        /*for each option in the original select element,
        create a new DIV that will act as an option item:*/
        c = document.createElement("DIV");
        c.innerHTML = selElmnt.options[j].innerHTML;
        c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h, sl, yl;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        sl = s.length;
        h = this.parentNode.previousSibling;
        for (i = 0; i < sl; i++) {
        if (s.options[i].innerHTML == this.innerHTML) {
        s.selectedIndex = i;
        h.innerHTML = this.innerHTML;
        y = this.parentNode.getElementsByClassName("same-as-selected");
        yl = y.length;
        for (k = 0; k < yl; k++) {
        y[k].removeAttribute("class");
    }
        this.setAttribute("class", "same-as-selected");
        break;
    }
    }
        h.click();
    });
        b.appendChild(c);
    }
        x[i].appendChild(b);
        a.addEventListener("click", function(e) {
        /*when the select box is clicked, close any other select boxes,
        and open/close the current select box:*/
        e.stopPropagation();
        closeAllSelect(this);
        this.nextSibling.classList.toggle("select-hide");
        this.classList.toggle("select-arrow-active");
    });
    }
        function closeAllSelect(elmnt) {
        /*a function that will close all select boxes in the document,
        except the current select box:*/
        var x, y, i, xl, yl, arrNo = [];
        x = document.getElementsByClassName("select-items");
        y = document.getElementsByClassName("select-selected");
        xl = x.length;
        yl = y.length;
        for (i = 0; i < yl; i++) {
        if (elmnt == y[i]) {
        arrNo.push(i)
    } else {
        y[i].classList.remove("select-arrow-active");
    }
    }
        for (i = 0; i < xl; i++) {
        if (arrNo.indexOf(i)) {
        x[i].classList.add("select-hide");
    }
    }
    }
        /*if the user clicks anywhere outside the select box,
        then close all select boxes:*/
        document.addEventListener("click", closeAllSelect);


</script>

<script src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/tw-elements.umd.min.js"></script>
</body>
</html>