.class final Lcom/android/okhttp/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final greylist-max-o code:I

.field private final greylist-max-o handshake:Lcom/android/okhttp/Handshake;

.field private final greylist-max-o message:Ljava/lang/String;

.field private final greylist-max-o protocol:Lcom/android/okhttp/Protocol;

.field private final greylist-max-o requestMethod:Ljava/lang/String;

.field private final greylist-max-o responseHeaders:Lcom/android/okhttp/Headers;

.field private final greylist-max-o url:Ljava/lang/String;

.field private final greylist-max-o varyHeaders:Lcom/android/okhttp/Headers;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/okhttp/Response;)V
    .registers 3
    .param p1, "response"    # Lcom/android/okhttp/Response;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 571
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 572
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->protocol()Lcom/android/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    .line 574
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    .line 575
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 576
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 577
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    .line 578
    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/okhttp/okio/Source;)V
    .registers 13
    .param p1, "in"    # Lcom/android/okhttp/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    :try_start_3
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    .line 532
    .local v0, "source":Lcom/android/okhttp/okio/BufferedSource;
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 533
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 534
    new-instance v1, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 535
    .local v1, "varyHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    # invokes: Lcom/android/okhttp/Cache;->readInt(Lcom/android/okhttp/okio/BufferedSource;)I
    invoke-static {v0}, Lcom/android/okhttp/Cache;->access$1000(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v2

    .line 536
    .local v2, "varyRequestHeaderLineCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v2, :cond_29

    .line 537
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 536
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 539
    .end local v3    # "i":I
    :cond_29
    invoke-virtual {v1}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 541
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v3

    .line 542
    .local v3, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    iget-object v4, v3, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    iput-object v4, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    .line 543
    iget v4, v3, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    iput v4, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    .line 544
    iget-object v4, v3, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 545
    new-instance v4, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v4}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 546
    .local v4, "responseHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    # invokes: Lcom/android/okhttp/Cache;->readInt(Lcom/android/okhttp/okio/BufferedSource;)I
    invoke-static {v0}, Lcom/android/okhttp/Cache;->access$1000(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v5

    .line 547
    .local v5, "responseHeaderLineCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4d
    if-ge v6, v5, :cond_59

    .line 548
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 547
    add-int/lit8 v6, v6, 0x1

    goto :goto_4d

    .line 550
    .end local v6    # "i":I
    :cond_59
    invoke-virtual {v4}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v6

    iput-object v6, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 552
    invoke-direct {p0}, Lcom/android/okhttp/Cache$Entry;->isHttps()Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 553
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    .line 554
    .local v6, "blank":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_82

    .line 557
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    .line 558
    .local v7, "cipherSuite":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/okhttp/Cache$Entry;->readCertificateList(Lcom/android/okhttp/okio/BufferedSource;)Ljava/util/List;

    move-result-object v8

    .line 559
    .local v8, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0, v0}, Lcom/android/okhttp/Cache$Entry;->readCertificateList(Lcom/android/okhttp/okio/BufferedSource;)Ljava/util/List;

    move-result-object v9

    .line 560
    .local v9, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-static {v7, v8, v9}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    move-result-object v10

    iput-object v10, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    .line 561
    .end local v6    # "blank":Ljava/lang/String;
    .end local v7    # "cipherSuite":Ljava/lang/String;
    .end local v8    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v9    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    goto :goto_a1

    .line 555
    .restart local v6    # "blank":Ljava/lang/String;
    :cond_82
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expected \"\" but was \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/Cache$Entry;
    .end local p1    # "in":Lcom/android/okhttp/okio/Source;
    throw v7

    .line 562
    .end local v6    # "blank":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/okhttp/Cache$Entry;
    .restart local p1    # "in":Lcom/android/okhttp/okio/Source;
    :cond_9e
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;
    :try_end_a1
    .catchall {:try_start_3 .. :try_end_a1} :catchall_a6

    .line 565
    .end local v0    # "source":Lcom/android/okhttp/okio/BufferedSource;
    .end local v1    # "varyHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .end local v2    # "varyRequestHeaderLineCount":I
    .end local v3    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    .end local v4    # "responseHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .end local v5    # "responseHeaderLineCount":I
    :goto_a1
    invoke-interface {p1}, Lcom/android/okhttp/okio/Source;->close()V

    .line 566
    nop

    .line 567
    return-void

    .line 565
    :catchall_a6
    move-exception v0

    invoke-interface {p1}, Lcom/android/okhttp/okio/Source;->close()V

    .line 566
    throw v0
.end method

.method private greylist-max-o isHttps()Z
    .registers 3

    .line 618
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o readCertificateList(Lcom/android/okhttp/okio/BufferedSource;)Ljava/util/List;
    .registers 9
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/okio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    # invokes: Lcom/android/okhttp/Cache;->readInt(Lcom/android/okhttp/okio/BufferedSource;)I
    invoke-static {p1}, Lcom/android/okhttp/Cache;->access$1000(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v0

    .line 623
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 626
    :cond_c
    :try_start_c
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 627
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 628
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v0, :cond_39

    .line 629
    invoke-interface {p1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 630
    .local v4, "line":Ljava/lang/String;
    new-instance v5, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v5}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 631
    .local v5, "bytes":Lcom/android/okhttp/okio/Buffer;
    invoke-static {v4}, Lcom/android/okhttp/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    .line 632
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_35} :catch_3a

    .line 628
    nop

    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "bytes":Lcom/android/okhttp/okio/Buffer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 634
    .end local v3    # "i":I
    :cond_39
    return-object v2

    .line 635
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_3a
    move-exception v1

    .line 636
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o writeCertList(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/List;)V
    .registers 8
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/okio/BufferedSink;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    .line 644
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 645
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_12
    if-ge v1, v2, :cond_30

    .line 646
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 647
    .local v3, "bytes":[B
    invoke-static {v3}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v4

    .line 648
    .local v4, "line":Ljava/lang/String;
    invoke-interface {p1, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 649
    invoke-interface {p1, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_2c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_2c} :catch_32

    .line 645
    nop

    .end local v3    # "bytes":[B
    .end local v4    # "line":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 653
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_30
    nop

    .line 654
    return-void

    .line 651
    :catch_32
    move-exception v0

    .line 652
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public greylist-max-o matches(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)Z
    .registers 5
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "response"    # Lcom/android/okhttp/Response;

    .line 657
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 658
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 659
    invoke-static {p2, v0, p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyMatches(Lcom/android/okhttp/Response;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 657
    :goto_23
    return v0
.end method

.method public greylist-max-o response(Lcom/android/okhttp/Request;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Lcom/android/okhttp/Response;
    .registers 8
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "snapshot"    # Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 663
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "contentType":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, "contentLength":Ljava/lang/String;
    new-instance v2, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/android/okhttp/Request$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 666
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 667
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 668
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    move-result-object v2

    .line 669
    invoke-virtual {v2}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v2

    .line 670
    .local v2, "cacheRequest":Lcom/android/okhttp/Request;
    new-instance v3, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v3}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 671
    invoke-virtual {v3, v2}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    .line 672
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    .line 673
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 674
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 675
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/okhttp/Cache$CacheResponseBody;

    invoke-direct {v4, p2, v0, v1}, Lcom/android/okhttp/Cache$CacheResponseBody;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    .line 677
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    .line 678
    invoke-virtual {v3}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v3

    .line 670
    return-object v3
.end method

.method public greylist-max-o writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .registers 9
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    .line 583
    .local v0, "sink":Lcom/android/okhttp/okio/BufferedSink;
    iget-object v1, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 584
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 585
    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 586
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 587
    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v2}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    .line 588
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 589
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_2f
    const-string v4, ": "

    if-ge v2, v3, :cond_4e

    .line 590
    iget-object v5, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v5, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 591
    invoke-interface {v0, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 592
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v4, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 593
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 596
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_4e
    new-instance v2, Lcom/android/okhttp/internal/http/StatusLine;

    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    iget v5, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    iget-object v6, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v6}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 597
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 598
    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v2}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    .line 599
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 600
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    .restart local v3    # "size":I
    :goto_77
    if-ge v2, v3, :cond_94

    .line 601
    iget-object v5, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v5, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 602
    invoke-interface {v0, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 603
    iget-object v5, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v5, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 604
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 607
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_94
    invoke-direct {p0}, Lcom/android/okhttp/Cache$Entry;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 608
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 609
    iget-object v2, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v2}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 610
    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 611
    iget-object v1, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v1}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/Cache$Entry;->writeCertList(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/List;)V

    .line 612
    iget-object v1, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v1}, Lcom/android/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/Cache$Entry;->writeCertList(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/List;)V

    .line 614
    :cond_bb
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 615
    return-void
.end method
