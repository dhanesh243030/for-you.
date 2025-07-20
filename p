<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Happy Birthday Palak 🎉</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    body {
      height: 100vh;
      background: linear-gradient(to right, #ff9a9e, #fad0c4);
      display: flex;
      justify-content: center;
      align-items: center;
      overflow: hidden;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .container {
      text-align: center;
      color: white;
      animation: fadeIn 3s ease-in-out forwards;
    }

    h1 {
      font-size: 3rem;
      margin-bottom: 1rem;
      animation: float 3s ease-in-out infinite;
    }

    h2 {
      font-size: 2rem;
      white-space: nowrap;
      overflow: hidden;
      border-right: 2px solid white;
      width: 0;
      animation: typing 3s steps(20, end) forwards, blink 0.7s infinite;
    }

    @keyframes float {
      0%, 100% {
        transform: translateY(0);
      }
      50% {
        transform: translateY(-10px);
      }
    }

    @keyframes typing {
      to {
        width: 100%;
      }
    }

    @keyframes blink {
      50% {
        border-color: transparent;
      }
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
      } to {
        opacity: 1;
      }
    }

    .hearts {
      position: absolute;
      width: 100%;
      height: 100%;
      pointer-events: none;
      overflow: hidden;
    }

    .heart {
      position: absolute;
      width: 20px;
      height: 20px;
      background: red;
      transform: rotate(45deg);
      animation: floatHearts 10s linear infinite;
    }

    .heart::before,
    .heart::after {
      content: "";
      position: absolute;
      width: 20px;
      height: 20px;
      background: red;
      border-radius: 50%;
    }

    .heart::before {
      top: -10px;
      left: 0;
    }

    .heart::after {
      left: -10px;
      top: 0;
    }

    @keyframes floatHearts {
      0% {
        transform: translateY(100vh) rotate(45deg);
        opacity: 1;
      }
      100% {
        transform: translateY(-10vh) rotate(45deg);
        opacity: 0;
      }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>🎉 Happy Birthday 🎉</h1>
    <h2>Dear Palak 💖</h2>
  </div>
  <div class="hearts">
    <!-- Generate multiple hearts -->
    <script>
      for (let i = 0; i < 50; i++) {
        const heart = document.createElement('div');
        heart.className = 'heart';
        heart.style.left = Math.random() * 100 + 'vw';
        heart.style.animationDuration = (5 + Math.random() * 5) + 's';
        heart.style.opacity = Math.random();
        document.querySelector('.hearts').appendChild(heart);
      }
    </script>
  </div>
</body>
</html>
