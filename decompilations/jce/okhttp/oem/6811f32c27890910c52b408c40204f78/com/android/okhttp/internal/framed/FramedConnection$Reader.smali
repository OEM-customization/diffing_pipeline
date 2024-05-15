.class Lcom/android/okhttp/internal/framed/FramedConnection$Reader;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/FrameReader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reader"
.end annotation


# instance fields
.field final frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

.field final synthetic this$0:Lcom/android/okhttp/internal/framed/FramedConnection;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FrameReader;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "frameReader"    # Lcom/android/okhttp/internal/framed/FrameReader;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 595
    const-string/jumbo v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get2(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    iput-object p2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    .line 597
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FrameReader;Lcom/android/okhttp/internal/framed/FramedConnection$Reader;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "frameReader"    # Lcom/android/okhttp/internal/framed/FrameReader;
    .param p3, "-this2"    # Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FrameReader;)V

    return-void
.end method

.method private ackSettingsLater(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 8
    .param p1, "peerSettings"    # Lcom/android/okhttp/internal/framed/Settings;

    .prologue
    .line 749
    invoke-static {}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get1()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$3;

    const-string/jumbo v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v4}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get2(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$3;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 757
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .registers 1

    .prologue
    .line 761
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lcom/android/okhttp/okio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .prologue
    .line 824
    return-void
.end method

.method public data(ZILcom/android/okhttp/okio/BufferedSource;I)V
    .registers 9
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap0(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 625
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v1, p2, p3, p4, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap3(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/okio/BufferedSource;IZ)V

    .line 626
    return-void

    .line 628
    :cond_e
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 629
    .local v0, "dataStream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-nez v0, :cond_22

    .line 630
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 631
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 632
    return-void

    .line 634
    :cond_22
    invoke-virtual {v0, p3, p4}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveData(Lcom/android/okhttp/okio/BufferedSource;I)V

    .line 635
    if-eqz p1, :cond_2a

    .line 636
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveFin()V

    .line 638
    :cond_2a
    return-void
.end method

.method protected execute()V
    .registers 7

    .prologue
    .line 600
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 601
    .local v0, "connectionErrorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 603
    .local v3, "streamErrorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_start_4
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-boolean v4, v4, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    if-nez v4, :cond_f

    .line 604
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-interface {v4}, Lcom/android/okhttp/internal/framed/FrameReader;->readConnectionPreface()V

    .line 606
    :cond_f
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-interface {v4, p0}, Lcom/android/okhttp/internal/framed/FrameReader;->nextFrame(Lcom/android/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 608
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 609
    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1b} :catch_26
    .catchall {:try_start_4 .. :try_end_1b} :catchall_36

    .line 615
    :try_start_1b
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v4, v0, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap2(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_46

    .line 618
    :goto_20
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 620
    :goto_25
    return-void

    .line 610
    :catch_26
    move-exception v1

    .line 611
    .local v1, "e":Ljava/io/IOException;
    :try_start_27
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 612
    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_36

    .line 615
    :try_start_2b
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v4, v0, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap2(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_44

    .line 618
    :goto_30
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_25

    .line 613
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_36
    move-exception v4

    .line 615
    :try_start_37
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v5, v0, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap2(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_42

    .line 618
    :goto_3c
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 613
    throw v4

    .line 616
    :catch_42
    move-exception v2

    .local v2, "ignored":Ljava/io/IOException;
    goto :goto_3c

    .end local v2    # "ignored":Ljava/io/IOException;
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_44
    move-exception v2

    .restart local v2    # "ignored":Ljava/io/IOException;
    goto :goto_30

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ignored":Ljava/io/IOException;
    :catch_46
    move-exception v2

    .restart local v2    # "ignored":Ljava/io/IOException;
    goto :goto_20
.end method

.method public goAway(ILcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # Lcom/android/okhttp/okio/ByteString;

    .prologue
    const/4 v2, 0x0

    .line 776
    invoke-virtual {p3}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v3

    .line 781
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v3

    .line 782
    :try_start_8
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v4}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/okhttp/internal/framed/FramedStream;

    .line 783
    .local v1, "streamsCopy":[Lcom/android/okhttp/internal/framed/FramedStream;
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->-set2(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_4d

    monitor-exit v3

    .line 787
    array-length v3, v1

    :goto_2c
    if-ge v2, v3, :cond_50

    aget-object v0, v1, v2

    .line 788
    .local v0, "framedStream":Lcom/android/okhttp/internal/framed/FramedStream;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getId()I

    move-result v4

    if-le v4, p1, :cond_4a

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 789
    sget-object v4, Lcom/android/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveRstStream(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 790
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    .line 787
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 781
    .end local v0    # "framedStream":Lcom/android/okhttp/internal/framed/FramedStream;
    .end local v1    # "streamsCopy":[Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_4d
    move-exception v2

    monitor-exit v3

    throw v2

    .line 793
    .restart local v1    # "streamsCopy":[Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_50
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V
    .registers 16
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lcom/android/okhttp/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/android/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 642
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v1, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap0(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 643
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v1, p3, p5, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap4(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V

    .line 644
    return-void

    .line 647
    :cond_e
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v7

    .line 649
    :try_start_11
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get8(Lcom/android/okhttp/internal/framed/FramedConnection;)Z
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_9d

    move-result v1

    if-eqz v1, :cond_1b

    monitor-exit v7

    return-void

    .line 651
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v6

    .line 653
    .local v6, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-nez v6, :cond_8b

    .line 655
    invoke-virtual {p6}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 656
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, p3, v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_9d

    monitor-exit v7

    .line 657
    return-void

    .line 661
    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get3(Lcom/android/okhttp/internal/framed/FramedConnection;)I
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_9d

    move-result v1

    if-gt p3, v1, :cond_3c

    monitor-exit v7

    return-void

    .line 664
    :cond_3c
    :try_start_3c
    rem-int/lit8 v1, p3, 0x2

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get5(Lcom/android/okhttp/internal/framed/FramedConnection;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_9d

    if-ne v1, v2, :cond_4a

    monitor-exit v7

    return-void

    .line 668
    :cond_4a
    :try_start_4a
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/FramedStream;-><init>(ILcom/android/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 670
    .local v0, "newStream":Lcom/android/okhttp/internal/framed/FramedStream;
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v1, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-set0(Lcom/android/okhttp/internal/framed/FramedConnection;I)I

    .line 671
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get1()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;

    const-string/jumbo v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get2(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v4, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v4, v8

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/FramedStream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_89
    .catchall {:try_start_4a .. :try_end_89} :catchall_9d

    monitor-exit v7

    .line 685
    return-void

    .end local v0    # "newStream":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_8b
    monitor-exit v7

    .line 690
    invoke-virtual {p6}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 691
    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v6, v1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 692
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    .line 693
    return-void

    .line 647
    .end local v6    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_9d
    move-exception v1

    monitor-exit v7

    throw v1

    .line 697
    .restart local v6    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_a0
    invoke-virtual {v6, p5, p6}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveHeaders(Ljava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    .line 698
    if-eqz p2, :cond_a8

    invoke-virtual {v6}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveFin()V

    .line 699
    :cond_a8
    return-void
.end method

.method public ping(ZII)V
    .registers 8
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .prologue
    const/4 v3, 0x0

    .line 764
    if-eqz p1, :cond_f

    .line 765
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap1(Lcom/android/okhttp/internal/framed/FramedConnection;I)Lcom/android/okhttp/internal/framed/Ping;

    move-result-object v0

    .line 766
    .local v0, "ping":Lcom/android/okhttp/internal/framed/Ping;
    if-eqz v0, :cond_e

    .line 767
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/Ping;->receive()V

    .line 773
    .end local v0    # "ping":Lcom/android/okhttp/internal/framed/Ping;
    :cond_e
    :goto_e
    return-void

    .line 771
    :cond_f
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 v2, 0x1

    invoke-static {v1, v2, p2, p3, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap7(Lcom/android/okhttp/internal/framed/FramedConnection;ZIILcom/android/okhttp/internal/framed/Ping;)V

    goto :goto_e
.end method

.method public priority(IIIZ)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .prologue
    .line 814
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 818
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v0, p2, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap5(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V

    .line 819
    return-void
.end method

.method public rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .prologue
    .line 702
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v1, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap0(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 703
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v1, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->-wrap6(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 704
    return-void

    .line 706
    :cond_e
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 707
    .local v0, "rstStream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-eqz v0, :cond_19

    .line 708
    invoke-virtual {v0, p2}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveRstStream(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 710
    :cond_19
    return-void
.end method

.method public settings(ZLcom/android/okhttp/internal/framed/Settings;)V
    .registers 18
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lcom/android/okhttp/internal/framed/Settings;

    .prologue
    .line 713
    const-wide/16 v2, 0x0

    .line 714
    .local v2, "delta":J
    const/4 v7, 0x0

    .line 715
    .local v7, "streamsToNotify":[Lcom/android/okhttp/internal/framed/FramedStream;
    iget-object v9, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v9

    .line 716
    :try_start_6
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v8, v8, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v10, 0x10000

    invoke-virtual {v8, v10}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v5

    .line 717
    .local v5, "priorWriteWindowSize":I
    if-eqz p1, :cond_19

    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v8, v8, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/framed/Settings;->clear()V

    .line 718
    :cond_19
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v8, v8, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/android/okhttp/internal/framed/Settings;->merge(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 719
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v8

    sget-object v10, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v8, v10, :cond_31

    .line 720
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 722
    :cond_31
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v8, v8, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v10, 0x10000

    invoke-virtual {v8, v10}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v4

    .line 723
    .local v4, "peerInitialWindowSize":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_80

    if-eq v4, v5, :cond_80

    .line 724
    sub-int v8, v4, v5

    int-to-long v2, v8

    .line 725
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v8}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get7(Lcom/android/okhttp/internal/framed/FramedConnection;)Z

    move-result v8

    if-nez v8, :cond_56

    .line 726
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v8, v2, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->addBytesToWriteWindow(J)V

    .line 727
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lcom/android/okhttp/internal/framed/FramedConnection;->-set1(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z

    .line 729
    :cond_56
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v8}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_80

    .line 730
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v8}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    iget-object v10, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v10}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    new-array v10, v10, [Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Lcom/android/okhttp/internal/framed/FramedStream;

    move-object v7, v0

    .line 733
    .end local v7    # "streamsToNotify":[Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_80
    invoke-static {}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get1()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v10, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;

    const-string/jumbo v11, "OkHttp %s settings"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v13}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get2(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-direct {v10, p0, v11, v12}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_9b
    .catchall {:try_start_6 .. :try_end_9b} :catchall_b2

    monitor-exit v9

    .line 739
    if-eqz v7, :cond_b8

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_b8

    .line 740
    const/4 v8, 0x0

    array-length v9, v7

    :goto_a6
    if-ge v8, v9, :cond_b8

    aget-object v6, v7, v8

    .line 741
    .local v6, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    monitor-enter v6

    .line 742
    :try_start_ab
    invoke-virtual {v6, v2, v3}, Lcom/android/okhttp/internal/framed/FramedStream;->addBytesToWriteWindow(J)V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_b5

    monitor-exit v6

    .line 740
    add-int/lit8 v8, v8, 0x1

    goto :goto_a6

    .line 715
    .end local v4    # "peerInitialWindowSize":I
    .end local v5    # "priorWriteWindowSize":I
    .end local v6    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_b2
    move-exception v8

    monitor-exit v9

    throw v8

    .line 741
    .restart local v4    # "peerInitialWindowSize":I
    .restart local v5    # "priorWriteWindowSize":I
    .restart local v6    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_b5
    move-exception v8

    monitor-exit v6

    throw v8

    .line 746
    .end local v6    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_b8
    return-void
.end method

.method public windowUpdate(IJ)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .prologue
    .line 796
    if-nez p1, :cond_16

    .line 797
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v2

    .line 798
    :try_start_5
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-wide v4, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v4, p2

    iput-wide v4, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 799
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->notifyAll()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_13

    monitor-exit v2

    .line 809
    :cond_12
    :goto_12
    return-void

    .line 797
    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1

    .line 802
    :cond_16
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 803
    .local v0, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-eqz v0, :cond_12

    .line 804
    monitor-enter v0

    .line 805
    :try_start_1f
    invoke-virtual {v0, p2, p3}, Lcom/android/okhttp/internal/framed/FramedStream;->addBytesToWriteWindow(J)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_24

    monitor-exit v0

    goto :goto_12

    .line 804
    :catchall_24
    move-exception v1

    monitor-exit v0

    throw v1
.end method
