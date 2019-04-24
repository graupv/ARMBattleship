#   create ascii art .py
#   para generar el codigo de ascii
'''
    Genera cada linea de:
        address: .asciz "linea"
'''


lines = []
lines2 = []

with open('C:\\Users\\gerap\\Documents\\GitHub\\ARMBattleship\\src\\pic.txt', encoding='utf-8') as f:
    for line in f:
        lines.append(line)

with open('code.s', 'w') as file:
    for line in range(0, len(lines) - 1):
        file.write(f"art_{line}: .asciz \"{lines[line][:len(lines[line]) - 1]}\"")

with open('C:\\Users\\gerap\\Documents\\GitHub\\ARMBattleship\\src\\pic2.txt', encoding='utf-8') as f:
    for line in f:
        lines2.append(line)

with open('code2.s', 'w') as file:
    for line in range(0, len(lines2) - 1):
        file.write(f'art_{line}: .asciz \"{lines2[line][:len(lines2[line]) - 1]}\"')


