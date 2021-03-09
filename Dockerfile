FROM nofrost1234/make-latex:latest

COPY .latexmkrc /home/runner/.latexmkrc
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
