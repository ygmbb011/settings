#!/usr/bin/env python3
#-*- coding: utf-8 -*-

# http://yuizho.hatenablog.com/entry/2013/04/16/234410

import sys
import glob
import xlrd
import openpyxl
import argparse

class xl_grepper(object):
	def _read(self, bookpath):
		pass
	
	def _judge(self, value):
		if value.find(self.word) != -1:
			return True
		return False
	
	def _action(self, bookpath, sheetnm, cellpos):
		print(bookpath + ',' + sheetnm + ',' + cellpos)
	
	def do(self, word, bookpath):
		self.word = word
		self._read(file)

# For Excel2000/2002/2003
class xls_grepper(xl_grepper):
	def __init__(self):
		self.ext = '.xls'

	def _read(self, bookpath):
		cells = []
		book = xlrd.open_workbook(bookpath)
		for sheet in book.sheets():
			for col in range(sheet.ncols):
				for row in range(sheet.nrows):
					if self._judge(sheet.cell(row, col).value):
						self._action(bookpath, sheet.name, str(row) + str(row))

# For Excel2007/2010/2013
class xlsx_grepper(xl_grepper):
	def __init__(self):
		self.ext = '.xls[x|m]'

	def _read(self, bookpath):
		cells = []
		book = openpyxl.load_workbook(bookpath, data_only=True)
		for sheet in book:
			for row in sheet.rows:
				for cell in row:
					if cell.value != None:
						if self._judge(cell.value):
							self._action(bookpath, sheet.title, cell.column + str(cell.row))

if __name__ == '__main__':
	
	# Argument setting
	parser = argparse.ArgumentParser()
	parser.add_argument('word', help='grep WORD')
	parser.add_argument('-p', '--pattern', default='**/*', help='grep target PATTERN')
	parser.add_argument('-o', '--old', action='store_true', help='grep old version Excel Files', )
	
	# Check arguments
	args = parser.parse_args()
	print(args)
	
	# Create an instance of the "grepper" by argument
	if args.old:
		grepper = xls_grepper()
	else:
		grepper = xlsx_grepper()
	
	# Grep file specified by argument
	find_list = []
	files = glob.glob(args.pattern + grepper.ext, recursive=True)
	for file in files:
		if grepper.do(args.word, file):
			find_list.append(file)
	
	# Output of corresponding file
	print('\n'.join(find_list))
