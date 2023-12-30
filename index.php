<?php
$conn = mysqli_connect("localhost", "root", "");
mysqli_select_db($conn, 'siakad');

if (isset($_POST["login"])) {

    $username = $_POST["username"];
    $password = $_POST["password"];

    $result = mysqli_query($conn, "SELECT * FROM users WHERE username = '$username' ");

    if (mysqli_num_rows($result) === 1) {

        $row = mysqli_fetch_assoc($result);
        if (password_verify($password, $row["password"])) {
            header("Location: siakad.php");
            exit;
        }
    }

    $error = true;
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="index.css" />
    <script type="text/javascript" src="index.js"></script>
    <script src="https://kit.fontawesome.com/3528b98a47.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg bgnav">
        <div class="container-fluid">
            <div>
                <a class="navbar-brand fs-3 p-0" href="#">SKKM ITI</a>
            </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ms-auto">
                    <a class="nav-link about" href="#">
                        <button>About</button>
                    </a>
                </div>
            </div>
        </div>
    </nav>
    <div class="container-fluid pt-3">
        <div class="row">
            <div class="col-sm-5 ms-4">
                <div class="header">
                    <h5><i class="fa-solid fa-calendar-days ms-sm-1 me-sm-2"></i>Event</h5>
                    <hr />
                </div>
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                            class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="asset/bg.jpg" class="d-block w-100" alt="..." />
                            <div class="carousel-caption d-none d-md-block text-black">
                                <h5>First slide label</h5>
                                <p>Some representative placeholder content for the first slide.</p>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>

            <div class="col-sm-6 ms-5">
                <div class="header">
                    <h5><i class="fa-regular fa-user ms-sm-1 me-sm-2"></i>User</h5>
                    <hr />
                </div>
                <div class="btnchoice">
                    <a href="#" class="ms-2 active"
                        onclick="toggleActive(this);showPemberitahuan()"><button>Pemberitahuan</button></a>
                    <a href="#" class="ms-2" onclick="toggleActive(this);showLogin()"><button>Login</button></a>
                </div>
                <hr />
                <div class="Pemberitahuan">
                    <h5 class="text-center p-2">PEMBERITAHUAN!</h5>
                    <ul>
                        <li>DOWNLOAD BUKU PEDOMAN SKKM: <a href="#">bit.ly/PEDOMANSKKM2019</a></li>
                    </ul>
                    <ul>
                        <li>
                            Diberitahukan kepada seluruh mahasiswa bahwa daftar kegiatan yang dapat diunggah di website
                            SKKM adalah daftar kegiatan yang diikuti selama masa studi di Politeknik Negeri Malang.
                            Daftar kegiatan di luar masa studi tidak
                            dapat dihitung dalam angka kredit SKKM
                        </li>
                    </ul>
                    <ul>
                        <li>Diwajibkan mengunggah foto formal pada masing-masing akun.</li>
                    </ul>
                    <ul>
                        <li>
                            Berhak mendapatkan fasilitas percepatan birokrasi SKKM khusus mahasiswa yang diterima kerja
                            lebih awal sebelum wisuda atau mahasiswa yang mengikuti sidang skripsi/TA jalur khusus
                            karena diterima kerja, dengan menunjukkan
                            bukti telah diterima kerja atau LOA (Letter of Acceptance) dari perusahaan secara tertulis
                            kepada HMJ dan BEM.
                        </li>
                    </ul>
                    <ul>
                        <li>Untuk mahasiswa alumni yang belum menyelesaikan tanggungan SKKM dimohon segera menghubungi
                            HMJ dan BEM.</li>
                    </ul>
                    <ul>
                        <li>Sertifikat yang tidak ada namanya harap di beri nama sebelum di upload!</li>
                    </ul>
                    <ul>
                        <li>Penguploadtan sertifikat, wajib dalam bentuk scan berwarna! Selain dalam bentuk scan,
                            sertifikat tidak dapat diverifikasi!</li>
                    </ul>
                    <ul>
                        <li>
                            CATATAN: KEGIATAN YANG TIDAK DIAKUI DI DALAM SKKM:
                            <ol>
                                <li>Test PECT (TOEIC)/TOEFL/IELTS atau Sertifikasi Bahasa lainnya.</li>
                                <li>Test Urine.</li>
                                <li>Piagam/Sertifikasi Keahlian.</li>
                                <li>Sertifikat mengikuti Program PMMB/PKL.</li>
                                <li>Sertifikat peserta Dialog Dosen dan Mahasiswa (DDM) dan atau Dialog Pimpinan dan
                                    Mahasiswa (DIPAM).</li>
                                <li>Sertifikat peserta Dies Natalis.</li>
                                <li>Sertifikat konser atau sejenisnya.</li>
                                <li>Kegiatan yang mengandung nilai atau hasil dari kegiatan.</li>
                                <li>Kegiatan yang tidak relevan dengan kategori penilaian SKKM.</li>
                            </ol>
                        </li>
                    </ul>
                </div>
                <div class="login">
                    <div>
                        <h5 class="pt-4 pb-2">SILAHKAN LOGIN</h5>
                        <p>Untuk login MAHASISWA gunakan akun SIAKAD</p>
                    </div>
                    <div>
                        <form class="d-flex pb-3" action="" method="post">
                            <input class="col-sm-5 form-input" type="text" id="username" name="username"
                                placeholder="Username" /><br />
                            <input class="offset-sm-1 col-sm-6 form-input" type="password" id="password" name="password"
                                placeholder="Password" />
                        </form>
                        <div class="d-flex pb-3">
                            <select class="form-select col-sm-5 custom-dropdown" aria-label="Default select example">
                                <option value="1">Mahasiswa</option>
                                <option value="2">Admin</option>
                            </select>
                            <div class="form-check offset-sm-1 pt-2">
                                <input class="form-check-input check" type="checkbox" id="showPassword"
                                    onclick="togglePassword()" />
                                <label class="form-check-label" for="showPassword">Show</label>
                            </div>
                        </div>
                        <button class="loginbt" type="submit" name="login">Login</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="index.js"></script>
    <script>
    function showPemberitahuan() {
        document.querySelector(".Pemberitahuan").style.display = "block";
        document.querySelector(".login").style.display = "none";
    }

    function showLogin() {
        document.querySelector(".login").style.display = "block";
        document.querySelector(".Pemberitahuan").style.display = "none";
    }

    function toggleActive(clickedButton) {
        var buttons = document.querySelectorAll(".btnchoice a");
        buttons.forEach(function(button) {
            button.classList.remove("active");
        });

        clickedButton.classList.add("active");
    }

    function togglePassword() {
        var passwordInput = document.getElementById("password");
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
        } else {
            passwordInput.type = "password";
        }
    }
    </script>
</body>

</html>