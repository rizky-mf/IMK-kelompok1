<nav
  class="navbar navbar-expand-lg navbar-light navbar-store fixed-top"
  data-aos="fade-down"
>
  <div class="container-fluid">
    <button
      class="btn btn-secondary d-md-none mr-auto mr-2"
      id="menu-toggle"
    >
      &laquo; Menu
    </button>
    <button
      class="navbar-toggler"
      type="button"
      data-toggle="collapse"
      data-target="#navbarResponsive"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collpase navbar-collapse" id="navbarResponsive">
      <!-- dekstop menu -->
      <ul class="navbar-nav d-none d-lg-flex ml-auto">
        <li class="nav-item dropdown">
          <a
            href="#"
            class="nav-link"
            id="navbarDropdown"
            role="button"
            data-toggle="dropdown"
          >
            <img
              src="../assets/images/person-circle.svg"
              alt="profile"
              height="40px"
              class="rounded-circle mr-2 profile-picture"
            />
            <?php 
              $id_user = $_SESSION['user'];
              $user = query("SELECT * FROM users WHERE id_user = $id_user")[0];
            ?>
            Hi, <?= $user["name"]; ?>
          </a>
          <div class="dropdown-menu">
            <a href="../index.php" class="dropdown-item">Back To Home</a>
            <div class="dropdown-divider"></div>
            <a href="../logout.php" class="dropdown-item">logout</a>
          </div>
        </li>
      </ul>

      <!-- mobile app -->
      <ul class="navbar-nav d-block d-lg-none">
        <li class="nav-item">
          <a href="" class="nav-link"> Hi, Kelompok-1 </a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div
  class="section-content section-dashboard-home"
  data-aos="fade-up"
>
  <div class="container-fluid">
    <div class="dashboard-heading">
      <h2 class="dashboard-title">Dashboard</h2>
      <p class="dashboard-subtitle">Look what you have made today!</p>
    </div>
    <div class="dashboard-content">
      <div class="row">
        <div class="col-md-6">
          <div class="card mb-2">
            <div class="card-body">
            <?php 
              $id_user = $_SESSION["user"];
              $transaction = rows("SELECT * FROM transactions WHERE user_id = $id_user");
            ?>
              <div class="dashboard-card-title">Transactions</div>
              <div class="dashboard-card-subtitle"><?= $transaction; ?></div>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card mb-2">
            <div class="card-body">
            <?php 
              $total_tf = 0;
              $transactionUser = query("SELECT * FROM transactions WHERE user_id = $id_user");
              foreach ($transactionUser as $transactionTotal) {
                $total_tf += $transactionTotal["total_price"];
              }
            ?>
              <div class="dashboard-card-title">Transaction</div>
              <div class="dashboard-card-subtitle">Rp. <?= number_format($total_tf); ?></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>