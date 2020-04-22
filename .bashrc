function tran() {
    vocab_path='/home/pwyq/new-vocabularies/vocab_April.txt'
    echo "================================" >> $vocab_path
    # :zh = translate to Chinese; sed removes special characters
    trans :zh $1 | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g" | tee -a $vocab_path
    echo -e "\n" >> $vocab_path
}
