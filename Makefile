CFLAGS = -Wall
LDFLAGS = -s
RM = rm -f

all: rnx2crx crx2rnx

rnx2crx: source/rnx2crx.c
	$(CC) $(CFLAGS) $^ $(LDFLAGS) -o $@

crx2rnx: source/crx2rnx.c
	$(CC) $(CFLAGS) $^ $(LDFLAGS) -o $@

clean:
	$(RM) rnx2crx crx2rnx
