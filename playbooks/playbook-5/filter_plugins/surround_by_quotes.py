class FilterModule():
    @staticmethod
    def surround_by_quotes(a_list):
        return ['"%s"' % an_element for an_element in a_list]

    def filters(self):
        return {'surround_by_quotes': self.surround_by_quotes}