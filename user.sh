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

EmailAddress()
{
read -p "ENTER THE EMAIL ADDRESS : " EMAIL
pat="^[a-z]{3,}([.]{1}[0-9a-zA-Z]{3,})?@[a-zA-Z]{2}[.]{1}([a-z]{2})+[.]?([a-zA-Z]{2})?$"
if [[ $EMAIL =~ $pat ]];
then
	echo "VALID ";
else
	echo "INVALID EMAIL ADDRESS";
	EmailAddress
fi
}

firstName
lastName
EmailAddress
