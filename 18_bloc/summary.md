# Summary Materi – Flutter State Management (BLoC)

Flutter memiliki sifat declarative

Declarative = membangun UI nya untuk mencerminkan state saat ini

Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah

Ada 2 jenis state dalam flutter, ephemeral state dan app state

Ephemeral =
a. digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses datanya
b. tidak perlu state management yang kompleks
c. hanya membutuhkan stateful dengan menggunakan setState()

App State =
a. digunakan ketika bagian lain suatu aplikasi membutuhkan akses ke data state widget

setState lebih cocok untuk ephermeral state

Provider lebih cocok untuk state management yang lebih kompleks

Bloc untuk memisahkan UI dengan bisnis logic nya
