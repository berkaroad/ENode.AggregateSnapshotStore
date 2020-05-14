all: pack

pack: build
	mkdir -p `pwd`/packages
	dotnet pack -c Release `pwd`/src/ENode.AggregateSnapshotStore/
	mv `pwd`/src/ENode.AggregateSnapshotStore/bin/Release/*.nupkg `pwd`/packages/

build:
	dotnet build -c Release `pwd`/src/ENode.AggregateSnapshotStore/
