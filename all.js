<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
    </style>
</head>

<body>
    <div>
        <form action="submit.php" method="post" onsubmit="return validation()">
            <label>Name :</label>
            <input type="text" placeholder="name" name="name" id="name" />
            <label>Email :</label>
            <input type="email" placeholder="email" name="email" id="email" />
            <label>Mobail No :</label>
            <input type="number" placeholder="number" name="number" id="number" />
            <div class="BT">
                <input type="submit" name="submit" value="submit" />
                <input type="reset" name="reset" value="reset" />
            </div>
        </form>
    </div>

    <script>
        let name = document.getElementById("name")
        let email = document.getElementById("email")
        let number = document.getElementById("number")

        function validation() {
            if (name.value == "") {
                alert("Please enter name")
                return false
            } else if (email.value == "") {
                alert("Please enter email")
                return false
            } else if (number.value == "") {
                alert("Please enter number")
                return false
            } else {
                return true
            }
        }
    </script>
</body>

</html>


<?php

$connect = mysqli_connect("localhost", "root", "", "ignou");
if ($connect->connect_error) {
    die("connection error" . $connect->connect_error);
}

if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $number = $_POST['number'];
}

$sql = "INSERT into suervay (name, email, number) VALUES ('$name' , '$email' , '$number')";
if ($connect->query($sql) === TRUE) {
    echo "data entry store successfuly";
} else {
    echo "Error : " . $connect->error;
}
// Display records
include 'display_records.php';

$connect->close();
?>



<?php

// Select operation to display records
$selectSql = "SELECT * FROM suervay";
$result = $connect->query($selectSql);


if ($result->num_rows > 0) {
    echo "<table>";
    echo "<tr><th>Name</th><th>Email</th><th>Mobile No</th><th>Action</th></tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row['name'] . "</td>";
        echo "<td>" . $row['email'] . "</td>";
        echo "<td>" . $row['number'] . "</td>";
        echo "<td><a href='update.php?id=" . $row['id'] . "'>Update</a> | <a href='delete.php?id=" . $row['id'] . "'>Delete</a></td>";
        echo "</tr>";
    }

    echo "</table>";
} else {
    echo "No records found";
}

?>



<?php

$connect = mysqli_connect("localhost", "root", "", "ignou");
if ($connect->connect_error) {
    die("Connection error: " . $connect->connect_error);
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Retrieve data based on the given ID
    $selectSql = "SELECT * FROM suervay WHERE id = '$id'";
    $result = $connect->query($selectSql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $name = $row['name'];
        $email = $row['email'];
        $number = $row['number'];
    } else {
        echo "Record not found";
        exit;
    }
}

if (isset($_POST['update'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $number = $_POST['number'];

    // Update operation
    $updateSql = "UPDATE suervay SET name = '$name', email = '$email', number = '$number' WHERE id = '$id'";
    if ($connect->query($updateSql) === TRUE) {
        echo "Data updated successfully";
    } else {
        echo "Error: " . $connect->error;
    }
}

$connect->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Record</title>
</head>

<body>
    <h2>Update Record</h2>
    <form action="update.php?id=<?php echo $id; ?>" method="post">
        <label>Name:</label>
        <input type="text" name="name" value="<?php echo $name; ?>" required />
        <label>Email:</label>
        <input type="email" name="email" value="<?php echo $email; ?>" required />
        <label>Mobile No:</label>
        <input type="number" name="number" value="<?php echo $number; ?>" required />
        <input type="submit" name="update" value="Update" />
    </form>
</body>

</html>



<?php

$connect = mysqli_connect("localhost", "root", "", "ignou");
if ($connect->connect_error) {
    die("Connection error: " . $connect->connect_error);
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Delete operation
    $deleteSql = "DELETE FROM suervay WHERE id = '$id'";
    if ($connect->query($deleteSql) === TRUE) {
        echo "Record deleted successfully";
    } else {
        echo "Error: " . $connect->error;
    }
}

$connect->close();
?>


========================================================================================================================================

let Price = [15,5,20,8,7];
let Wheth = [3,4,6,8,2];
let Cap = 20;

class Product {
  constructor(Price, Wheth) {
    this.Price = Price;
    this.Wheth = Wheth;
    this.perKgPrice = Price / Wheth;
  }
}

const knapsackAlgorithm = (pro, cap) => {
  const sorted = pro.sort((a, b) => b.perKgPrice - a.perKgPrice);

  let totalPrice = 0;
  let currentWheti = 0;

  for (let item of sorted) {
    if (currentWheti + item.Wheth <= cap) {
      totalPrice += item.Price;
      currentWheti += item.Wheth;
    } else {
      let remaingWhite = cap - currentWheti;
      totalPrice = totalPrice + item.Price * (remaingWhite / item.Wheth);
      break;
    }
  }
  return totalPrice
};

let product = [];
for (let i = 0; i < Price.length; i++) {
  product.push(new Product(Price[i], Wheth[i]));
}

console.log(knapsackAlgorithm(product, Cap));



-----------

function mergeSort(arr) {
    if (arr.length <= 1) {
      return arr;
    }
  
    // Split the array into halves
    const middle = Math.floor(arr.length / 2);
    const left = arr.slice(0, middle);
    const right = arr.slice(middle);
  
    console.log("left",left);
    console.log("right",right);

    // Recursively sort both halves
    const leftSorted = mergeSort(left);
    const rightSorted = mergeSort(right);

    console.log("leftSorted",leftSorted);
    console.log("rightSorted",rightSorted);
    // Merge the sorted halves
    
    let a = merge(leftSorted, rightSorted);
    console.log("aaaaaaaaaaaa",a);
    return a
  }
  
  function merge(left, right) {
    let result = [];
    let leftIndex = 0;
    let rightIndex = 0;
  
    // Compare elements and merge them in sorted order
    while (leftIndex < left.length && rightIndex < right.length) {
      if (left[leftIndex] < right[rightIndex]) {
        result.push(left[leftIndex]);
        leftIndex++;
      } else {
        result.push(right[rightIndex]);
        rightIndex++;
      }
    }
  
    // Add remaining elements from both arrays
    return result.concat(left.slice(leftIndex)).concat(right.slice(rightIndex));
  }
  
const arry = [3,4,6,8,2];
  console.log("mergeSort------->>",mergeSort(arry));




function bubbleSort(arr) {
  let n = arr.length;
  for (let i = 0; i < n - 1; i++) {
    for (let j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        // swap arr[j] and arr[j+1]
        let temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}



function selectionSort(arr) {
  let n = arr.length;
  for (let i = 0; i < n - 1; i++) {
    let minIndex = i;
    for (let j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    // swap arr[i] and arr[minIndex]
    let temp = arr[i];
    arr[i] = arr[minIndex];
    arr[minIndex] = temp;
  }
  return arr;
}




function insertionSort(arr) {
  let n = arr.length;
  for (let i = 1; i < n; i++) {
    let key = arr[i];
    let j = i - 1;
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }
  return arr;
}



function quickSort(arr) {
  if (arr.length <= 1) {
    return arr;
  }

  // Choose a pivot element
  const pivot = arr[Math.floor(arr.length / 2)];

  // Partition the array into two halves
  const left = arr.filter(element => element < pivot);
  const middle = arr.filter(element => element === pivot);
  const right = arr.filter(element => element > pivot);

  // Recursively sort the left and right halves
  return quickSort(left).concat(middle, quickSort(right));
}


function heapSort(arr) {
  // Build a max heap
  buildMaxHeap(arr);

  // Extract elements from the heap one by one
  for (let i = arr.length - 1; i > 0; i--) {
    // Swap the root (max element) with the last element
    [arr[0], arr[i]] = [arr[i], arr[0]];
    
    // Ensure the remaining elements form a max heap
    heapify(arr, i, 0);
  }

  return arr;
}

function buildMaxHeap(arr) {
  const n = arr.length;

  // Build a max heap from the bottom up
  for (let i = Math.floor(n / 2) - 1; i >= 0; i--) {
    heapify(arr, n, i);
  }
}

function heapify(arr, n, i) {
  let largest = i;
  const left = 2 * i + 1;
  const right = 2 * i + 2;

  // Compare with left child
  if (left < n && arr[left] > arr[largest]) {
    largest = left;
  }

  // Compare with right child
  if (right < n && arr[right] > arr[largest]) {
    largest = right;
  }

  // If the largest is not the root, swap and recursively heapify
  if (largest !== i) {
    [arr[i], arr[largest]] = [arr[largest], arr[i]];
    heapify(arr, n, largest);
  }
}

=======================================================================================================

function binarySearch(arr, target) {
  let low = 0;
  let high = arr.length - 1;

  while (low <= high) {
    const mid = Math.floor((low + high) / 2);
    if (arr[mid] === target) {
      return mid; // Element found
    } else if (arr[mid] < target) {
      low = mid + 1; // Search in the right half
    } else {
      high = mid - 1; // Search in the left half
    }
  }

  return -1; // Element not found
}



function linearSearch(arr, target) {
  for (let i = 0; i < arr.length; i++) {
    if (arr[i] === target) {
      return i; // Return the index if the target is found
    }
  }

  return -1; // Return -1 if the target is not found
}






