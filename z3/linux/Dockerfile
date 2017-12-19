FROM debian:jessie-slim

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian jessie main" | tee /etc/apt/sources.list.d/mono-official.list
RUN apt-get update && apt-get install build-essential python git mono-devel -y

RUN git clone https://github.com/Z3Prover/z3.git
RUN cd z3 && git reset --hard 1f29cebd4df6 && python scripts/mk_make.py && cd build && make && cd ../..
ADD . .

CMD ["./build.sh"]

