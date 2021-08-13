# rename MS Spotlight imaages with their appropriate extension
file * | tr -d ':' | cut -c1-69 | xargs -n2 sh -c 'mv $1 $1.$(echo $2 | tr [:upper:] [:lower:])' sh
