# Considering an Atom Replacement Part 1 - Drop-In Replacement

Atom was sunset all the way back in 2022, and I think the grammar testing can be improved by moving away from it as the test runner. There are two potential routes to go. The first is to simply use a drop-in replacement for Atom. You get a bit more modern of a test runner from an actively-developed project with a bit of a performance improvement to boot. The first project I found, [Atom-ng](https://github.com/Alex313031/atom-ng), unfortunately also went defunct back in 2024. I don't think it's a good idea to drop one EOL project for another, but I did test it and it does work just fine. Then I found [Pulsar](https://pulsar-edit.dev/). A continuation project of Atom that is actively developed, even receiving releases as recently as three hours ago at the time of writing. Replace the `atom` executable call with a `pulsar` call and all tests pass. It's [easily available](https://pulsar-edit.dev/download/#latest-version) for Windows, Linux, and Mac from various package managers.

## Performance
These test run times are fairly short, but I got curious about performance and so I wrote [test-tokenizers.ps1](./test-tokenizers.ps1) and ran them each 100 times; here are the results:

| Tokenizer     | Total Time | Avg. per run |
|---------------|------------|--------------|
| Atom v1.60    | 12m00s     | 6.60s        |
| Atom-Ng v1.66 | 10m30s     | 5.71s        |
| Pulsar v1.133 | 6m6s       | 3.67s        |

## Part 2 - Coming "Soon"

In a separate branch I'll work on a more modern testing stack, probably utilizing VS Code's tokenizer instead.
