# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"B7F..00","system":"readv2"},{"code":"B7Fz.00","system":"readv2"},{"code":"37637.0","system":"readv2"},{"code":"46251.0","system":"readv2"},{"code":"11678.0","system":"readv2"},{"code":"27289.0","system":"readv2"},{"code":"47848.0","system":"readv2"},{"code":"53562.0","system":"readv2"},{"code":"55379.0","system":"readv2"},{"code":"73669.0","system":"readv2"},{"code":"44776.0","system":"readv2"},{"code":"21247.0","system":"readv2"},{"code":"38295.0","system":"readv2"},{"code":"50466.0","system":"readv2"},{"code":"18200.0","system":"readv2"},{"code":"6174.0","system":"readv2"},{"code":"65426.0","system":"readv2"},{"code":"2843.0","system":"readv2"},{"code":"50822.0","system":"readv2"},{"code":"96487.0","system":"readv2"},{"code":"35095.0","system":"readv2"},{"code":"31189.0","system":"readv2"},{"code":"38870.0","system":"readv2"},{"code":"15635.0","system":"readv2"},{"code":"9544.0","system":"readv2"},{"code":"46829.0","system":"readv2"},{"code":"12096.0","system":"readv2"},{"code":"26157.0","system":"readv2"},{"code":"94426.0","system":"readv2"},{"code":"46490.0","system":"readv2"},{"code":"37162.0","system":"readv2"},{"code":"71886.0","system":"readv2"},{"code":"67929.0","system":"readv2"},{"code":"60341.0","system":"readv2"},{"code":"31391.0","system":"readv2"},{"code":"58575.0","system":"readv2"},{"code":"20267.0","system":"readv2"},{"code":"5706.0","system":"readv2"},{"code":"65069.0","system":"readv2"},{"code":"64587.0","system":"readv2"},{"code":"39432.0","system":"readv2"},{"code":"8672.0","system":"readv2"},{"code":"55419.0","system":"readv2"},{"code":"21598.0","system":"readv2"},{"code":"2321.0","system":"readv2"},{"code":"D33","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('benign-neoplasm-of-brain-and-other-parts-of-central-nervous-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["benign-neoplasm-of-brain-and-other-parts-of-central-nervous-system---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["benign-neoplasm-of-brain-and-other-parts-of-central-nervous-system---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["benign-neoplasm-of-brain-and-other-parts-of-central-nervous-system---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
