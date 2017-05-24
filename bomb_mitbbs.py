import sys

import urllib2

request_headers = {
"Accept-Language": "en-US,en;q=0.5",
"User-Agent": "Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0",
"Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
"Referer": "http://thewebsite.com",
"Connection": "keep-alive"
}

def query():
  url = 'http://www.mitbbs.com/mitbbs_search_result.php?cx=partner-pub-9374326915974877%3A8447678996&cof=FORID%3A10&ie=GB2312&q={0}'
  request = urllib2.Request(url.format(sys.argv[1]), headers=request_headers)
  contents = urllib2.urlopen(request).read()

def main(unused_command_line_args):
    for i in xrange(1000):
        query()
    return 0

if __name__ == '__main__':
    sys.exit(main(sys.argv))
