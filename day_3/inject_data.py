#!/usr/bin/env python3

import sys
sys.path.insert(0, "../utils")
import data_injector


class TurnsInjector(data_injector.DataInjector):
    def parse_data(self):
        banks = [b for b in self._data.split('\n') if b]
        self._add_dataset('banks', banks)

    def generate_data(self):
        lines = []

        for bank in self._datasets['banks']:
            lines.append(f'({bank})')

        return '\n'.join(lines)

    TAG_INJECTORS = {
        '<<INJECT DATA HERE>>': generate_data,
    }


if __name__ == '__main__':
    injector = TurnsInjector()
    injector.read()
    injector.parse_data()
    injector.inject()
    injector.write()