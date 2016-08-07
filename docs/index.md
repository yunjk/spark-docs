---
layout: global
displayTitle: Spark Overview
title: Overview
description: Apache Spark SPARK_VERSION_SHORT documentation homepage
---

아파치 스파크는 빠르고 범용적인 클러스터 컴퓨팅 시스템이다.
자바, 스칼라, 파이썬 그리고 R, 그리고 일반적인 실행 그래프를 지원하는 최적화된 엔진에서 고수준 API를 제공한다. 
또한 SQL과 구조적 데이터 처리를 위한 [Spark SQL](sql-programming-guide.html), 머신러닝을 위한 [MLlib](ml-guide.html) , 그래프 처리를 위한 [GraphX](graphx-programming-guide.html) , 그리고 [Spark Streaming](streaming-programming-guide.html) 을 포함한 고수준의 다양한 도구 세트를 지원한다.

# Downloading

다운로드 페이지에서 [downloads page](http://spark.apache.org/downloads.html) 스파크를 다운로드 한다. 이 문서는 스파크 버전 2.0.0에 대한 것이다. 스파크는 HDFS와 YARN을 위한 하둡 클라이언트 라이브러리를 사용한다. 다운로드는 인기 하둡 버전들 중에 소수에 대해 사전 패키지되어 있다. 사용자는 “Hadoop free” 바이너리를 다운로드 할 수 있고 스파크의 클래스패스를 늘려서([by augmenting Spark's classpath](hadoop-provided.html)) 특정 하둡 버전으로 스파크를 실행할 수 있다. 

소스로부터 스파크를 빌드하고 싶다면 [Building Spark](building-spark.html) 페이지를 방문하라. 


스파크는 윈도우와 유닉스, 리눅스, 맥OS에서 실행된다. 
로컬 머신에서 쉽게 실행 가능하다 --- 설치된 `java` 경로를 시스템 `PATH` 또는 `JAVA_HOME` 환경 변수에 지정하기만 하면 된다.

스파크는 자바 7+, 파이썬 2.6+/3.4+ 그리고 R 3.1+ 에서 실행된다. 스칼라 API를 위해, 스파크 {{site.SPARK_VERSION}}은 스칼라 {{site.SCALA_BINARY_VERSION}}을 사용한다. 호환이 되는 스칼라 버전 {{site.SCALA_BINARY_VERSION}}.x 이 필요하다.

# 예제와 쉘 실행하기

Spark comes with several sample programs.  
스파크는 몇 가지 예제 프로그램을 함께 제공한다 
`examples/src/main` 디렉토리에 스칼라, 자바, 파이썬 그리고 R 예제들이 있다.
자바나 스칼라 예제 프로그램을 실행하기 위해 최상위 스파크 디렉토리에 `bin/run-example <class> [params]`를 사용한다.
이 면에서 애플리케이션을 실행하기 위해 일반적인 호출 [`spark-submit` script](submiting-applications.html)
예를들어,

    ./bin/run-example SparkPi 10

스칼라 쉘의 수정된 버전을 통해 대화형 스파크를 실행할 수 있다. 프레임워크를 배우기 위한 최고의 방법이다.

    ./bin/spark-shell --master local[2]


[master URL for a distributed cluster](submitting-applications.html#master-urls), or `local` to run
locally with one thread, or `local[N]` to run locally with N threads. 
`--master`' 옵션은 [분산 클러스터에 대한 마스터 URL](submitting-applications.html#master-usrls), 또는 로컬에서 하나의 쓰레드로 실행하기 위한 `local` 또는 N개의 쓰레드를 로컬에서 실행하기 위한 `local[N]` 을 명시한다.
테스트를 위해 `local`을 사용하여 시작하는 것이 좋다. 옵션의 전체 항목을 확인하기 위해 스파크 쉘에서 `--help` 옵션을 실행한다.

스파크는 파이썬 API를 제공한다. 파이썬 인터프리터에서 대화형으로 스파크를 실행하려면 `bin/pyspark`를 사용한다:

    ./bin/pyspark --master local[2]

예제 애플리케이션은 파이선에서 제공된다. 예를들어,

    ./bin/spark-submit examples/src/main/python/pi.py 10

스파크는 1.4 이후로 실험적으로 [R API](sparkr.html)를 제공한다. (DataFrames APIs만 포함되어 있다).
R 인터프리터에서 대화형으로 스파크를 실행하기 위해, `bin/sparkR`을 사용한다:

    ./bin/sparkR --master local[2]

Example applications are also provided in R. For example,
예제 애플리케이션은 R에서도 제공된다. 예를들어,

    ./bin/spark-submit examples/src/main/r/dataframe.R

# 클러스터에서 실행하기

스파크 [클러스터 모드 오버뷰](cluster-overview.html)는 클러스터에서 실행하는 주요 개념을 설명한다.
스파크 자체로 모두 실행할 수 있고, 기존의 클러스터 관리자들을 통해 실행할 수도 있다. 배포를 위한 여러가지 옵션들을 제공한다:

* [스탠드얼론 배포 모드](spark-standalone.html): 프라이빗 클러스터에 스파크를 배포하기 위한 가장 간단한 방법
* [Apache Mesos](running-on-mesos.html)
* [Hadoop YARN](running-on-yarn.html)


# Where to Go from Here
# 이제 무엇을 봐야 할까 

**프로그래밍 가이드:**

* [빠른 시작](quick-start.html): 스파크 API를 빠르게 소개한다. 여기서 시작하라! 
* [스파크 프로그래밍 가이드(programming-guide.html): 지원하는 모든 언어로 스파크의 상세한 개요 (Scala, Java, Python, R)(Scala, Java, Python, R)  
* 스파크에 포함된 모듈:
  * [스파크 스트리밍](streaming-programming-guide.html): 실시간 데이터 스트리밍 처리
  * [스파크 SQL, Datasets, 그리고 DataFrame](sql-programming-guide.html): 구조화된 데이터와 관계형 쿼리에 대한 지원
  * [MLlib](ml-guide.html): 내장 머신 러닝 라이브러리
  * [GraphX](graphx-programming-guide.html): 그래프 처리를 위한 스파크의 새로운 API

**API 문서:**

* [Spark Scala API (Scaladoc)](api/scala/index.html#org.apache.spark.package)
* [Spark Java API (Javadoc)](api/java/index.html)
* [Spark Python API (Sphinx)](api/python/index.html)
* [Spark R API (Roxygen2)](api/R/index.html)

**개발 가이드:**

* [Cluster Overview](cluster-overview.html): 클러스터에서 실행되는 개념과 컴포넌트들의 개요
* [Submitting Applications](submitting-applications.html): 애플리케이션 패키징과 배포
* 배포 모드:
  * [Amazon EC2](https://github.com/amplab/spark-ec2): 약 5분 안에 EC2에서 클러스터를 실행할 수 있도록한다. 
  * [Standalone Deploy Mode](spark-standalone.html): 써드파티 클러스터 매니저를 사용하지 않고 스탠드얼론 클러스터를 실행한다.
  * [Mesos](running-on-mesos.html): 프라이빗 클러스터 사용
      [Apache Mesos](http://mesos.apache.org)
  * [YARN](running-on-yarn.html): (YARN)에 스파크 배포

**다른 문서들:**

* [Configuration](configuration.html): 설정 시스템을 통한 스파크 커스터마이징
* [Monitoring](monitoring.html): 애플리케이션 행위 추적
* [Tuning Guide](tuning.html): 성능과 메모리 사용 최적화를 위한 가장 좋은 방법
* [Job Scheduling](job-scheduling.html): 스파크 애플리케이션과 자원의 스케쥴링
* [Security](security.html): 스파크 보안 지원 
* [Hardware Provisioning](hardware-provisioning.html): 클러스터 하드웨어에 대한 권장 사항
* 다른 스토리지 시스템들과 통합:
  * [OpenStack Swift](storage-openstack-swift.html)
* [Building Spark](building-spark.html): 메이븐으로 스파크 빌드
* [Contributing to Spark](https://cwiki.apache.org/confluence/display/SPARK/Contributing+to+Spark)
* [기업 Projects](https://cwiki.apache.org/confluence/display/SPARK/Supplemental+Spark+Projects): 써드파티 스파크관련 프로젝트들

**외부 자원:**

* [Spark Homepage](http://spark.apache.org)
* [Spark Wiki](https://cwiki.apache.org/confluence/display/SPARK)
* [Spark Community](http://spark.apache.org/community.html) 지역모임을 포함한 자원
* [StackOverflow tag `apache-spark`](http://stackoverflow.com/questions/tagged/apache-spark)
* [Mailing Lists](http://spark.apache.org/mailing-lists.html): 스파크에 대한 질문
* [AMP Camps](http://ampcamp.berkeley.edu/): 스파크, 스파크 스트리밍, Mesos 그리고 스파크 관련된 것들에 대해 연습하고 회담을 하는 UC 버클리에서 진행하는 트래이닝 캠프 시리즈 [Videos](http://ampcamp.berkeley.edu/6/),
  [slides](http://ampcamp.berkeley.edu/6/) 그리고 [exercises](http://ampcamp.berkeley.edu/6/exercises/) 는
  무료로 온라인에서 제공한다.
* [Code Examples](http://spark.apache.org/examples.html): 스파크의 `examples` 하위 폴더에 사용가능한 예제들이 있다. ([Scala]({{site.SPARK_GITHUB_URL}}/tree/master/examples/src/main/scala/org/apache/spark/examples),
 [Java]({{site.SPARK_GITHUB_URL}}/tree/master/examples/src/main/java/org/apache/spark/examples),
 [Python]({{site.SPARK_GITHUB_URL}}/tree/master/examples/src/main/python),
 [R]({{site.SPARK_GITHUB_URL}}/tree/master/examples/src/main/r))
