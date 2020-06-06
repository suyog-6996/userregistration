echo "WELCOME TO THE USER REGISTRATION PROGRAM"

firstName()
{
read -p "ENTER THE FIRST NAME : " fname
pat="^[A-Z]{1}[a-z]{2,}$"
if [[ $fname =~ $pat ]];
then
	echo "VALID ";
else
	echo "NOTVALID"
	firstName
fi
}

lastName()
{
read -p "ENTER THE LAST NAME : " lname
pat="^[A-Z]{1}[a-z]{2,}$"
if [[ $lname =~ $pat ]];
then
	echo "VALID ";
else
	echo "INVALID LASTNAME";
	lastName
fi
}

firstName
lastName
