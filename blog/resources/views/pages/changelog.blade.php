@extends('layouts.app')

@section('content')
    <h1><?php echo $title; ?></h1>
    <p>Prikaz izmjena</p>
    <table id="t01">
        <tr>
            <th>Datum</th>
            <th>Izmjena</th>
        </tr>
        <tr>
            <td>09.03.2020.</td>
            <td>Instalacija i konfiguracija Laravela</td>
        </tr>
        <tr>
            <td>09.03.2020.</td>
            <td>Drop sve jer sam pogrijesio sa komandama, nova verzija Laravela</td>
        </tr>
        <tr>
            <td>09.03.2020.</td>
            <td>Pokusaj 2. - instalacija isponova sa novim komandama (css i auth)</td>
        </tr>
        <tr>
            <td>09.03.2020.</td>
            <td>izmjene u layoutu i hosts fileu (na lokalnom serveru nisam mogao dobiti tocno)</td>
        </tr>
        <tr>
            <td>10.03.2020.</td>
            <td>konfiguracija rute i kontrolera</td>
        </tr>
        <tr>
            <td>10.03.2020.</td>
            <td>blade template i comiling assets</td>
        </tr>
        <tr>
            <td>10.03.2020.</td>
            <td>navigacija + bootstrap</td>
        </tr>
        <tr>
            <td>11.03.2020.</td>
            <td>modeli i database migrations, konfiguracija DB</td>
        </tr>
        <tr>
            <td>11.03.2020.</td>
            <td>forme i pohrana podataka</td>
        </tr>
        <tr>
            <td>11.03.2020.</td>
            <td>problem 1 - card je zamjenio .well u bootstrapu</td>
        </tr>
        <tr>
            <td>11.03.2020.</td>
            <td>problem 2 - ckeditor ne funkcionira na verziji laravela vecoj od 5.5 (v6 se koristi)</td>
        </tr>
        <tr>
            <td>11.03.2020.</td>
            <td>azuriranje i brisanje objava</td>
        </tr>
        <tr>
            <td>12.03.2020.</td>
            <td>user auth - promjenjeno za razliku od starijih verzija laravela</td>
        </tr>
        <tr>
            <td>12.03.2020.</td>
            <td>model relationship</td>
        </tr>
        <tr>
            <td>12.03.2020.</td>
            <td>testiranje objava od razlicitih korisnika - da li korisniku prikazuje samo njegove objave</td>
        </tr>
        <tr>
            <td>12.03.2020.</td>
            <td>finalno testiranje aplikacije</td>
        </tr>
    </table>
    <p>Izradio Tomislav Levak</p>
@endsection
