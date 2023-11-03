import pandas as pd
import pickle

# Đọc câu trả lời của user duoc luu trong file txt
with open("D:\\Web\\BookStore\\src\\main\\java\\userAnswer.txt", "r") as file:
    userAnswer = file.read()

dt = userAnswer.split(' ')
print(userAnswer)
print(dt)

# đưa câu trả lời vào dataframe
testData = pd.DataFrame({"c1": [dt[0]], "c2": [dt[1]], "c3": [dt[2]],
                         "c4": [dt[3]], "c5": [dt[4]], "c6": [dt[5]], "c7": [dt[6]]})
print(testData)

# load model
filename = 'svm_model.pkl'
model = pickle.load(open("D:\\Web\\BookStore\\src\\main\\python\\" + filename, 'rb'))

# predict
predicts = model.predict(testData)
print(predicts[0])

# Ghi ket qua de xuat ra file txt
output_file_path = "D:\\Web\\BookStore\\src\\main\\java\\ketQuaDeXuat.txt"

with open(output_file_path, "w") as file:
    file.write(str(predicts[0]))

print(f"Kết quả đã được ghi vào {output_file_path}")