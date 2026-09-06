<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="theme-color" content="#111111">
    <title>NexusShop — Modern Minimalist Store</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        /* =========================================================
           DESIGN SYSTEM
        ========================================================= */

        :root {
            --black: #111111;
            --black-2: #1b1b1b;
            --white: #ffffff;
            --cream: #f7f6f2;
            --cream-2: #efeee9;
            --line: #e5e3dd;
            --text: #171717;
            --muted: #77756f;
            --light-muted: #a5a39d;
            --accent: #d96c4d;
            --accent-dark: #b94f33;
            --green: #288c72;
            --yellow: #e7b84b;

            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 14px;
            --radius-sm: 10px;

            --shadow: 0 8px 30px rgba(0,0,0,.055);
            --shadow-hover: 0 20px 50px rgba(0,0,0,.10);

            --container: 1280px;
            --transition: .28s cubic-bezier(.2,.7,.2,1);
        }

        /* =========================================================
           RESET
        ========================================================= */

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "DM Sans", sans-serif;
            background: var(--white);
            color: var(--text);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        body.menu-open {
            overflow: hidden;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button,
        input {
            font: inherit;
        }

        button {
            border: 0;
            cursor: pointer;
        }

        img {
            display: block;
            width: 100%;
        }

        ::selection {
            background: var(--accent);
            color: white;
        }

        .container {
            width: min(var(--container), calc(100% - 48px));
            margin-inline: auto;
        }

        .serif {
            font-family: "Playfair Display", serif;
        }

        .muted {
            color: var(--muted);
        }

        /* =========================================================
           ANNOUNCEMENT
        ========================================================= */

        .announcement {
            background: var(--black);
            color: rgba(255,255,255,.82);
            text-align: center;
            font-size: 12px;
            letter-spacing: .5px;
            padding: 9px 16px;
        }

        .announcement strong {
            color: white;
        }

        /* =========================================================
           HEADER
        ========================================================= */

        .site-header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255,255,255,.94);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid rgba(0,0,0,.06);
        }

        .header-inner {
            min-height: 76px;
            display: grid;
            grid-template-columns: 1fr auto 1fr;
            align-items: center;
            gap: 30px;
        }

        .logo {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            font-size: 21px;
            font-weight: 700;
            letter-spacing: -.7px;
        }

        .logo-mark {
            width: 35px;
            height: 35px;
            display: grid;
            place-items: center;
            background: var(--black);
            color: white;
            border-radius: 11px;
            font-size: 14px;
        }

        .logo em {
            color: var(--accent);
            font-style: normal;
        }

        .desktop-nav {
            display: flex;
            justify-content: center;
            gap: 4px;
        }

        .desktop-nav a {
            padding: 9px 14px;
            border-radius: 9px;
            color: var(--muted);
            font-size: 13px;
            font-weight: 600;
            transition: var(--transition);
        }

        .desktop-nav a:hover,
        .desktop-nav a.active {
            color: var(--black);
            background: var(--cream);
        }

        .header-actions {
            display: flex;
            align-items: center;
            justify-content: flex-end;
            gap: 5px;
        }

        .header-btn {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: transparent;
            color: var(--black);
            transition: var(--transition);
            position: relative;
        }

        .header-btn:hover {
            background: var(--cream);
        }

        .cart-count {
            position: absolute;
            top: 1px;
            right: 0;
            min-width: 18px;
            height: 18px;
            padding: 0 4px;
            display: grid;
            place-items: center;
            background: var(--accent);
            color: white;
            border: 2px solid white;
            border-radius: 50px;
            font-size: 9px;
            font-weight: 700;
        }

        .mobile-toggle {
            display: none;
        }

        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            padding: 22px 0 0;
        }

        .hero-card {
            min-height: 590px;
            border-radius: var(--radius-xl);
            overflow: hidden;
            position: relative;
            isolation: isolate;
            display: flex;
            align-items: center;
            background:
                linear-gradient(
                    90deg,
                    rgba(10,10,10,.88) 0%,
                    rgba(10,10,10,.63) 45%,
                    rgba(10,10,10,.12) 100%
                ),
                url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85")
                center/cover;
        }

        .hero-content {
            width: min(650px, 100%);
            padding: 70px;
            color: white;
        }

        .hero-eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 20px;
            padding: 7px 12px;
            border: 1px solid rgba(255,255,255,.2);
            background: rgba(255,255,255,.09);
            border-radius: 50px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .hero-eyebrow i {
            color: #f0a087;
        }

        .hero h1 {
            font-family: "Playfair Display", serif;
            font-size: clamp(48px, 6vw, 78px);
            line-height: .98;
            letter-spacing: -2.5px;
            margin-bottom: 22px;
            max-width: 650px;
        }

        .hero p {
            max-width: 520px;
            color: rgba(255,255,255,.76);
            font-size: 16px;
            line-height: 1.7;
            margin-bottom: 32px;
        }

        .hero-buttons {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            min-height: 48px;
            padding: 0 22px;
            border-radius: 50px;
            font-size: 13px;
            font-weight: 700;
            transition: var(--transition);
        }

        .btn-primary {
            background: white;
            color: var(--black);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 30px rgba(0,0,0,.2);
        }

        .btn-dark {
            background: var(--black);
            color: white;
        }

        .btn-dark:hover {
            background: #292929;
            transform: translateY(-2px);
        }

        .btn-accent {
            background: var(--accent);
            color: white;
        }

        .btn-accent:hover {
            background: var(--accent-dark);
            transform: translateY(-2px);
        }

        .btn-outline {
            background: transparent;
            border: 1px solid var(--line);
            color: var(--black);
        }

        .btn-outline:hover {
            background: var(--black);
            color: white;
            border-color: var(--black);
        }

        /* =========================================================
           TRUST BAR
        ========================================================= */

        .trust-bar {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            border-bottom: 1px solid var(--line);
            margin-top: 18px;
        }

        .trust-item {
            padding: 22px 18px;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 12px;
            border-right: 1px solid var(--line);
        }

        .trust-item:last-child {
            border-right: 0;
        }

        .trust-icon {
            width: 34px;
            height: 34px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: var(--cream);
            color: var(--accent);
            font-size: 13px;
        }

        .trust-item strong {
            display: block;
            font-size: 12px;
        }

        .trust-item span {
            display: block;
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================================================
           SECTIONS
        ========================================================= */

        .section {
            padding: 90px 0 0;
        }

        .section-header {
            display: flex;
            align-items: end;
            justify-content: space-between;
            gap: 20px;
            margin-bottom: 30px;
        }

        .section-kicker {
            color: var(--accent);
            text-transform: uppercase;
            letter-spacing: 1.4px;
            font-size: 10px;
            font-weight: 800;
            margin-bottom: 6px;
        }

        .section-title {
            font-family: "Playfair Display", serif;
            font-size: clamp(30px, 4vw, 43px);
            letter-spacing: -1px;
            line-height: 1.1;
        }

        .section-subtitle {
            color: var(--muted);
            font-size: 14px;
            margin-top: 7px;
        }

        .view-all {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            font-size: 12px;
            font-weight: 700;
            padding-bottom: 5px;
            border-bottom: 1px solid var(--black);
            white-space: nowrap;
        }

        .view-all i {
            transition: var(--transition);
        }

        .view-all:hover i {
            transform: translateX(4px);
        }

        /* =========================================================
           CATEGORIES
        ========================================================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 12px;
        }

        .category-card {
            min-height: 170px;
            border: 1px solid var(--line);
            border-radius: var(--radius-lg);
            background: var(--white);
            padding: 22px 14px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            transition: var(--transition);
            cursor: pointer;
        }

        .category-card:hover {
            background: var(--black);
            color: white;
            border-color: var(--black);
            transform: translateY(-5px);
            box-shadow: var(--shadow-hover);
        }

        .category-icon {
            width: 54px;
            height: 54px;
            border-radius: 17px;
            background: var(--cream);
            display: grid;
            place-items: center;
            color: var(--black);
            font-size: 20px;
            margin-bottom: 15px;
            transition: var(--transition);
        }

        .category-card:hover .category-icon {
            background: rgba(255,255,255,.1);
            color: white;
        }

        .category-card h3 {
            font-size: 13px;
            font-weight: 700;
        }

        .category-card span {
            margin-top: 3px;
            color: var(--muted);
            font-size: 11px;
        }

        .category-card:hover span {
            color: rgba(255,255,255,.55);
        }

        /* =========================================================
           PRODUCT GRID
        ========================================================= */

        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
        }

        .product-card {
            min-width: 0;
            position: relative;
            transition: var(--transition);
        }

        .product-image {
            aspect-ratio: .88;
            overflow: hidden;
            position: relative;
            border-radius: var(--radius-lg);
            background: var(--cream);
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: .55s cubic-bezier(.2,.7,.2,1);
        }

        .product-card:hover .product-image img {
            transform: scale(1.045);
        }

        .product-badge {
            position: absolute;
            top: 13px;
            left: 13px;
            padding: 6px 10px;
            background: white;
            color: var(--black);
            border-radius: 50px;
            font-size: 9px;
            font-weight: 800;
            letter-spacing: .6px;
            text-transform: uppercase;
            z-index: 2;
        }

        .product-badge.sale {
            background: var(--accent);
            color: white;
        }

        .wishlist {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: rgba(255,255,255,.92);
            color: #555;
            z-index: 3;
            transition: var(--transition);
        }

        .wishlist:hover,
        .wishlist.active {
            color: var(--accent);
            transform: scale(1.08);
        }

        .quick-add {
            position: absolute;
            bottom: 12px;
            left: 12px;
            right: 12px;
            height: 43px;
            border-radius: 12px;
            background: rgba(255,255,255,.94);
            backdrop-filter: blur(10px);
            font-size: 12px;
            font-weight: 700;
            transform: translateY(10px);
            opacity: 0;
            transition: var(--transition);
            z-index: 3;
        }

        .product-card:hover .quick-add {
            opacity: 1;
            transform: translateY(0);
        }

        .quick-add:hover {
            background: var(--black);
            color: white;
        }

        .product-info {
            padding: 16px 2px 0;
        }

        .product-category {
            font-size: 10px;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 700;
            color: var(--light-muted);
            margin-bottom: 5px;
        }

        .product-name {
            font-size: 14px;
            font-weight: 600;
            line-height: 1.35;
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
            margin-top: 8px;
        }

        .product-price {
            font-size: 15px;
            font-weight: 800;
        }

        .old-price {
            color: var(--light-muted);
            text-decoration: line-through;
            font-size: 12px;
            margin-left: 5px;
            font-weight: 500;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            color: var(--yellow);
            font-size: 10px;
        }

        .rating span {
            color: var(--muted);
            font-size: 10px;
        }

        /* =========================================================
           FEATURED DEAL
        ========================================================= */

        .deal-section {
            padding-top: 100px;
        }

        .deal {
            min-height: 480px;
            display: grid;
            grid-template-columns: 1.1fr 1fr;
            overflow: hidden;
            border-radius: var(--radius-xl);
            background: var(--cream);
        }

        .deal-image {
            min-height: 400px;
            background:
                url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85")
                center/cover;
        }

        .deal-content {
            padding: 60px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-label {
            align-self: flex-start;
            padding: 6px 11px;
            border-radius: 50px;
            background: var(--black);
            color: white;
            font-size: 9px;
            text-transform: uppercase;
            font-weight: 800;
            letter-spacing: 1px;
            margin-bottom: 18px;
        }

        .deal-content h2 {
            font-family: "Playfair Display", serif;
            font-size: clamp(34px, 4vw, 52px);
            line-height: 1.05;
            letter-spacing: -1px;
            margin-bottom: 14px;
        }

        .deal-description {
            max-width: 460px;
            color: var(--muted);
            font-size: 14px;
            line-height: 1.7;
            margin-bottom: 18px;
        }

        .deal-price {
            font-size: 29px;
            font-weight: 800;
        }

        .deal-price del {
            color: var(--light-muted);
            font-size: 17px;
            font-weight: 500;
            margin-left: 8px;
        }

        .deal-stock {
            color: var(--muted);
            font-size: 12px;
            margin-top: 4px;
        }

        .deal-stock strong {
            color: var(--accent);
        }

        .timer {
            display: flex;
            gap: 8px;
            margin: 22px 0 25px;
        }

        .timer-box {
            min-width: 64px;
            padding: 11px 9px;
            background: white;
            border-radius: 12px;
            text-align: center;
            border: 1px solid var(--line);
        }

        .timer-number {
            font-size: 20px;
            font-weight: 800;
            line-height: 1;
        }

        .timer-label {
            color: var(--muted);
            font-size: 8px;
            text-transform: uppercase;
            letter-spacing: .7px;
            margin-top: 5px;
        }

        /* =========================================================
           TESTIMONIALS
        ========================================================= */

        .reviews {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 16px;
        }

        .review-card {
            padding: 28px;
            background: var(--cream);
            border-radius: var(--radius-lg);
        }

        .review-stars {
            color: var(--yellow);
            font-size: 12px;
            letter-spacing: 2px;
            margin-bottom: 17px;
        }

        .review-text {
            font-family: "Playfair Display", serif;
            font-size: 18px;
            line-height: 1.55;
            margin-bottom: 22px;
        }

        .review-author {
            display: flex;
            align-items: center;
            gap: 11px;
        }

        .review-avatar {
            width: 38px;
            height: 38px;
            object-fit: cover;
            border-radius: 50%;
        }

        .review-name {
            font-size: 12px;
            font-weight: 700;
        }

        .review-role {
            color: var(--muted);
            font-size: 10px;
        }

        /* =========================================================
           NEWSLETTER
        ========================================================= */

        .newsletter-section {
            padding: 100px 0;
        }

        .newsletter {
            border-radius: var(--radius-xl);
            background: var(--black);
            color: white;
            padding: 65px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            align-items: center;
            gap: 50px;
        }

        .newsletter h2 {
            font-family: "Playfair Display", serif;
            font-size: clamp(32px, 4vw, 46px);
            line-height: 1.1;
            margin-bottom: 10px;
        }

        .newsletter p {
            color: rgba(255,255,255,.6);
            font-size: 13px;
            max-width: 420px;
        }

        .newsletter-form {
            display: flex;
            padding: 5px;
            border: 1px solid rgba(255,255,255,.15);
            background: rgba(255,255,255,.06);
            border-radius: 50px;
        }

        .newsletter-form input {
            flex: 1;
            min-width: 0;
            border: 0;
            outline: 0;
            padding: 0 17px;
            background: transparent;
            color: white;
            font-size: 13px;
        }

        .newsletter-form input::placeholder {
            color: rgba(255,255,255,.38);
        }

        .newsletter-form button {
            flex-shrink: 0;
        }

        #newsletterMsg {
            font-size: 11px;
            margin-top: 9px;
            min-height: 16px;
        }

        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            border-top: 1px solid var(--line);
            padding: 55px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr repeat(3, 1fr);
            gap: 50px;
            padding-bottom: 45px;
        }

        .footer-brand p {
            max-width: 300px;
            color: var(--muted);
            font-size: 12px;
            line-height: 1.7;
            margin-top: 12px;
        }

        .socials {
            display: flex;
            gap: 7px;
            margin-top: 18px;
        }

        .social {
            width: 34px;
            height: 34px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: var(--cream);
            font-size: 12px;
            color: var(--muted);
            transition: var(--transition);
        }

        .social:hover {
            background: var(--black);
            color: white;
        }

        .footer-col h4 {
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 14px;
        }

        .footer-col a {
            display: block;
            color: var(--muted);
            font-size: 12px;
            margin-bottom: 9px;
            transition: var(--transition);
        }

        .footer-col a:hover {
            color: var(--accent);
        }

        .footer-bottom {
            border-top: 1px solid var(--line);
            padding-top: 20px;
            display: flex;
            justify-content: space-between;
            gap: 20px;
            color: var(--light-muted);
            font-size: 10px;
        }

        /* =========================================================
           MOBILE DRAWER
        ========================================================= */

        .mobile-menu {
            position: fixed;
            inset: 0;
            z-index: 2000;
            background: white;
            padding: 25px;
            transform: translateX(100%);
            transition: .35s ease;
        }

        .mobile-menu.open {
            transform: translateX(0);
        }

        .mobile-menu-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 50px;
        }

        .mobile-close {
            width: 40px;
            height: 40px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: var(--cream);
        }

        .mobile-links a {
            display: block;
            font-family: "Playfair Display", serif;
            font-size: 34px;
            padding: 12px 0;
            border-bottom: 1px solid var(--line);
        }

        /* =========================================================
           TOAST
        ========================================================= */

        .toast {
            position: fixed;
            right: 24px;
            bottom: 24px;
            z-index: 3000;
            background: var(--black);
            color: white;
            padding: 13px 17px;
            border-radius: 12px;
            font-size: 12px;
            box-shadow: 0 15px 40px rgba(0,0,0,.2);
            transform: translateY(30px);
            opacity: 0;
            pointer-events: none;
            transition: var(--transition);
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media (max-width: 1100px) {
            .header-inner {
                grid-template-columns: auto 1fr auto;
            }

            .desktop-nav {
                display: none;
            }

            .mobile-toggle {
                display: grid;
                place-items: center;
                width: 40px;
                height: 40px;
                border-radius: 50%;
                background: var(--cream);
            }

            .logo {
                justify-self: center;
            }

            .header-inner > .mobile-toggle {
                display: grid;
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .product-grid {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media (max-width: 850px) {
            .hero-card {
                min-height: 500px;
            }

            .hero-content {
                padding: 45px;
            }

            .trust-bar {
                grid-template-columns: repeat(2, 1fr);
            }

            .trust-item:nth-child(2) {
                border-right: 0;
            }

            .trust-item:nth-child(-n+2) {
                border-bottom: 1px solid var(--line);
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal-image {
                min-height: 300px;
            }

            .deal-content {
                padding: 45px;
            }

            .reviews {
                grid-template-columns: 1fr;
            }

            .newsletter {
                grid-template-columns: 1fr;
                padding: 45px;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 600px) {
            .container {
                width: min(var(--container), calc(100% - 28px));
            }

            .announcement {
                font-size: 10px;
            }

            .header-inner {
                min-height: 64px;
                gap: 8px;
            }

            .logo {
                font-size: 17px;
            }

            .logo-mark {
                width: 31px;
                height: 31px;
            }

            .header-btn {
                width: 36px;
                height: 36px;
            }

            .header-actions .header-btn:first-child {
                display: none;
            }

            .hero {
                padding-top: 10px;
            }

            .hero-card {
                min-height: 540px;
                border-radius: 20px;
                background:
                    linear-gradient(
                        180deg,
                        rgba(10,10,10,.25) 0%,
                        rgba(10,10,10,.82) 65%,
                        rgba(10,10,10,.95) 100%
                    ),
                    url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1000&q=80")
                    center/cover;
                align-items: end;
            }

            .hero-content {
                padding: 28px;
            }

            .hero h1 {
                font-size: 46px;
                letter-spacing: -1.7px;
            }

            .hero p {
                font-size: 13px;
            }

            .btn {
                min-height: 44px;
                padding: 0 18px;
                font-size: 12px;
            }

            .trust-item {
                padding: 17px 8px;
                justify-content: flex-start;
            }

            .trust-item strong {
                font-size: 10px;
            }

            .trust-item span {
                font-size: 9px;
            }

            .section {
                padding-top: 65px;
            }

            .section-header {
                align-items: start;
            }

            .section-title {
                font-size: 31px;
            }

            .section-subtitle {
                font-size: 12px;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
                gap: 9px;
            }

            .category-card {
                min-height: 140px;
            }

            .product-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 18px 10px;
            }

            .product-image {
                aspect-ratio: .9;
                border-radius: 14px;
            }

            .quick-add {
                display: none;
            }

            .product-info {
                padding-top: 11px;
            }

            .product-name {
                font-size: 12px;
            }

            .product-price {
                font-size: 13px;
            }

            .old-price {
                font-size: 10px;
            }

            .rating {
                display: none;
            }

            .deal-section {
                padding-top: 70px;
            }

            .deal-image {
                min-height: 230px;
            }

            .deal-content {
                padding: 28px 22px;
            }

            .deal-content h2 {
                font-size: 38px;
            }

            .timer-box {
                min-width: 53px;
            }

            .newsletter-section {
                padding: 70px 0;
            }

            .newsletter {
                padding: 30px 20px;
                border-radius: 20px;
                gap: 30px;
            }

            .newsletter-form {
                flex-direction: column;
                border: 0;
                background: transparent;
                gap: 8px;
                padding: 0;
            }

            .newsletter-form input {
                height: 46px;
                border: 1px solid rgba(255,255,255,.15);
                border-radius: 50px;
                padding: 0 16px;
            }

            .newsletter-form button {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 30px;
            }

            .footer-brand {
                grid-column: 1 / -1;
            }

            .footer-bottom {
                flex-direction: column;
                text-align: center;
            }

            .toast {
                left: 14px;
                right: 14px;
                bottom: 14px;
                text-align: center;
            }
        }
    </style>
</head>

<body>

    <!-- =========================================================
         ANNOUNCEMENT
    ========================================================== -->

    <div class="announcement">
        Free shipping on orders over <strong>$75</strong> · New season collection is here
    </div>

    <!-- =========================================================
         HEADER
    ========================================================== -->

    <header class="site-header">
        <div class="container header-inner">

            <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu">
                <i class="fa-solid fa-bars"></i>
            </button>

            <a href="#" class="logo">
                <span class="logo-mark">
                    <i class="fa-solid fa-n"></i>
                </span>
                Nexus<em>Shop</em>
            </a>

            <nav class="desktop-nav">
                <a href="#" class="active">Home</a>
                <a href="#categories">Categories</a>
                <a href="#products">Shop</a>
                <a href="#deals">Deals</a>
                <a href="#reviews">Reviews</a>
            </nav>

            <div class="header-actions">

                <button class="header-btn" id="searchButton" aria-label="Search">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>

                <button class="header-btn" id="accountButton" aria-label="Account">
                    <i class="fa-regular fa-user"></i>
                </button>

                <button class="header-btn" id="wishlistButton" aria-label="Wishlist">
                    <i class="fa-regular fa-heart"></i>
                </button>

                <button class="header-btn" id="cartButton" aria-label="Shopping cart">
                    <i class="fa-solid fa-bag-shopping"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </button>

            </div>
        </div>
    </header>

    <!-- =========================================================
         MOBILE MENU
    ========================================================== -->

    <aside class="mobile-menu" id="mobileMenu">

        <div class="mobile-menu-top">
            <a href="#" class="logo">
                <span class="logo-mark">
                    <i class="fa-solid fa-n"></i>
                </span>
                Nexus<em>Shop</em>
            </a>

            <button class="mobile-close" id="mobileClose" aria-label="Close menu">
                <i class="fa-solid fa-xmark"></i>
            </button>
        </div>

        <nav class="mobile-links">
            <a href="#">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Shop</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>
        </nav>

    </aside>

    <main>

        <!-- =====================================================
             HERO
        ====================================================== -->

        <section class="hero">
            <div class="container">

                <div class="hero-card">

                    <div class="hero-content">

                        <div class="hero-eyebrow">
                            <i class="fa-solid fa-sparkles"></i>
                            New Collection 2026
                        </div>

                        <h1>
                            Things you'll
                            <br>
                            <span class="serif">love to own.</span>
                        </h1>

                        <p>
                            Thoughtfully selected fashion, technology and
