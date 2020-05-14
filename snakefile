rule rule convert_to_upper_case:
    input:
        "{first}.txt"
    output:
        "{first}.upper.txt"
    shell:
        """
        tr [a-z] [A-Z] < {input[0]} > {output}
        """

rule concatenate_files:
    input:
        "{first}.upper.txt",
        "{second}.upper.txt"
    output:
        "{first}_{second}.txt"
    shell:
        """
        cat {input[0]} {input[1]} > {output}
        """
