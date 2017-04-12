#
# Generate an SSH Key Pair
#

pub=$HOME/.ssh/id_rsa.pub
echo "Checking for SSH key, generating one if it does not exist..."
[[ -f $pub ]] || ssh-keygen -t rsa
echo "... done:"
echo ""

echo "Copying public key to clipboard..."
[[ -f $pub ]] && cat $pub | pbcopy
echo "... done:"
echo ""

