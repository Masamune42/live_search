<?php
$connect = mysqli_connect('localhost', "root", "", "tbl_customer");
$connect -> set_charset("utf8");
$output = '';
$sql = "SELECT * FROM tbl_customer WHERE customer_name LIKE '%" . $_POST["search"] . "%'";
$result = mysqli_query($connect, $sql);
if (mysqli_num_rows($result) > 0) {
    $output .= '<h4 align="center">Search Result</h4>';
    $output .= '<div class="table-responsive">
    <table class="table table-bordered">
        <tr>
            <th>Customer Name</th>
            <th>Address</th>
            <th>City</th>
            <th>Postal Code</th>
            <th>Country</th>
        </tr>';
    while ($row = mysqli_fetch_array($result)) {
        $output.= '<tr>
                    <td>'.$row['customer_name'].'</td>
                    <td>'.$row['address'].'</td>
                    <td>'.$row['city'].'</td>
                    <td>'.$row['postal_code'].'</td>
                    <td>'.$row['country'].'</td>
                </tr>
                ';
    }
    $output.= '</table>
            </div>';
    echo $output;
} else {
    echo 'no Data';
}
?>



