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
.field final blacklist frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/FramedConnection;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FrameReader;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "frameReader"    # Lcom/android/okhttp/internal/framed/FrameReader;

    .line 599
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 600
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OkHttp %s"

    invoke-direct {p0, v1, v0}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    iput-object p2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    .line 602
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FrameReader;Lcom/android/okhttp/internal/framed/FramedConnection$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p2, "x1"    # Lcom/android/okhttp/internal/framed/FrameReader;
    .param p3, "x2"    # Lcom/android/okhttp/internal/framed/FramedConnection$1;

    .line 596
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FrameReader;)V

    return-void
.end method

.method private blacklist ackSettingsLater(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 7
    .param p1, "peerSettings"    # Lcom/android/okhttp/internal/framed/Settings;

    .line 754
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$3;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "OkHttp %s ACK Settings"

    invoke-direct {v1, p0, v3, v2, p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$3;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 762
    return-void
.end method


# virtual methods
.method public blacklist ackSettings()V
    .registers 1

    .line 766
    return-void
.end method

.method public blacklist alternateService(ILjava/lang/String;Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lcom/android/okhttp/okio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .line 829
    return-void
.end method

.method public blacklist data(ZILcom/android/okhttp/okio/BufferedSource;I)V
    .registers 8
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v0, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1300(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 630
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushDataLater(ILcom/android/okhttp/okio/BufferedSource;IZ)V
    invoke-static {v0, p2, p3, p4, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1400(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/okio/BufferedSource;IZ)V

    .line 631
    return-void

    .line 633
    :cond_e
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 634
    .local v0, "dataStream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-nez v0, :cond_22

    .line 635
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 636
    int-to-long v1, p4

    invoke-interface {p3, v1, v2}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 637
    return-void

    .line 639
    :cond_22
    invoke-virtual {v0, p3, p4}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveData(Lcom/android/okhttp/okio/BufferedSource;I)V

    .line 640
    if-eqz p1, :cond_2a

    .line 641
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveFin()V

    .line 643
    :cond_2a
    return-void
.end method

.method protected blacklist execute()V
    .registers 5

    .line 605
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 606
    .local v0, "connectionErrorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 608
    .local v1, "streamErrorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_start_4
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-boolean v2, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    if-nez v2, :cond_f

    .line 609
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-interface {v2}, Lcom/android/okhttp/internal/framed/FrameReader;->readConnectionPreface()V

    .line 611
    :cond_f
    :goto_f
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-interface {v2, p0}, Lcom/android/okhttp/internal/framed/FrameReader;->nextFrame(Lcom/android/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_f

    .line 613
    :cond_18
    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    move-object v0, v2

    .line 614
    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1d} :catch_28
    .catchall {:try_start_4 .. :try_end_1d} :catchall_26

    move-object v1, v2

    .line 620
    :try_start_1e
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    invoke-static {v2, v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1200(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_34

    .line 621
    :catch_24
    move-exception v2

    goto :goto_36

    .line 619
    :catchall_26
    move-exception v2

    goto :goto_3d

    .line 615
    :catch_28
    move-exception v2

    .line 616
    .local v2, "e":Ljava/io/IOException;
    :try_start_29
    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    move-object v0, v3

    .line 617
    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    move-object v1, v3

    .line 620
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_2f
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    invoke-static {v2, v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1200(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_35

    .line 622
    :goto_34
    goto :goto_36

    .line 621
    :catch_35
    move-exception v2

    .line 623
    :goto_36
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 624
    nop

    .line 625
    return-void

    .line 620
    :goto_3d
    :try_start_3d
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    invoke-static {v3, v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1200(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_43

    .line 622
    goto :goto_44

    .line 621
    :catch_43
    move-exception v3

    .line 623
    :goto_44
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->frameReader:Lcom/android/okhttp/internal/framed/FrameReader;

    invoke-static {v3}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 624
    throw v2
.end method

.method public blacklist goAway(ILcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V
    .registers 10
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # Lcom/android/okhttp/okio/ByteString;

    .line 781
    invoke-virtual {p3}, Lcom/android/okhttp/okio/ByteString;->size()I

    .line 786
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v0

    .line 787
    :try_start_6
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/okhttp/internal/framed/FramedStream;

    .line 788
    .local v1, "streamsCopy":[Lcom/android/okhttp/internal/framed/FramedStream;
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 v3, 0x1

    # setter for: Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1602(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z

    .line 789
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_4d

    .line 792
    array-length v0, v1

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v0, :cond_4c

    aget-object v3, v1, v2

    .line 793
    .local v3, "framedStream":Lcom/android/okhttp/internal/framed/FramedStream;
    invoke-virtual {v3}, Lcom/android/okhttp/internal/framed/FramedStream;->getId()I

    move-result v4

    if-le v4, p1, :cond_49

    invoke-virtual {v3}, Lcom/android/okhttp/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 794
    sget-object v4, Lcom/android/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveRstStream(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 795
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/framed/FramedStream;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    .line 792
    .end local v3    # "framedStream":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 798
    :cond_4c
    return-void

    .line 789
    .end local v1    # "streamsCopy":[Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public blacklist headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V
    .registers 21
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lcom/android/okhttp/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/android/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 647
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    move-object v1, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p5

    iget-object v0, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v0, v9}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1300(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 648
    iget-object v0, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V
    invoke-static {v0, v9, v10, v8}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1500(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V

    .line 649
    return-void

    .line 652
    :cond_15
    iget-object v11, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v11

    .line 654
    :try_start_18
    iget-object v0, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1600(Lcom/android/okhttp/internal/framed/FramedConnection;)Z

    move-result v0

    if-eqz v0, :cond_22

    monitor-exit v11

    return-void

    .line 656
    :cond_22
    iget-object v0, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, v9}, Lcom/android/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 658
    .local v0, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-nez v0, :cond_95

    .line 660
    invoke-virtual/range {p6 .. p6}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 661
    iget-object v2, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    sget-object v3, Lcom/android/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v2, v9, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 662
    monitor-exit v11

    return-void

    .line 666
    :cond_39
    iget-object v2, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1700(Lcom/android/okhttp/internal/framed/FramedConnection;)I

    move-result v2

    if-gt v9, v2, :cond_43

    monitor-exit v11

    return-void

    .line 669
    :cond_43
    rem-int/lit8 v2, v9, 0x2

    iget-object v3, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I
    invoke-static {v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1800(Lcom/android/okhttp/internal/framed/FramedConnection;)I

    move-result v3

    const/4 v12, 0x2

    rem-int/2addr v3, v12

    if-ne v2, v3, :cond_51

    monitor-exit v11

    return-void

    .line 673
    :cond_51
    new-instance v13, Lcom/android/okhttp/internal/framed/FramedStream;

    iget-object v4, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    move-object v2, v13

    move/from16 v3, p3

    move v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/okhttp/internal/framed/FramedStream;-><init>(ILcom/android/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    move-object v2, v13

    .line 675
    .local v2, "newStream":Lcom/android/okhttp/internal/framed/FramedStream;
    iget-object v3, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # setter for: Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I
    invoke-static {v3, v9}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1702(Lcom/android/okhttp/internal/framed/FramedConnection;I)I

    .line 676
    iget-object v3, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;

    const-string v5, "OkHttp %s stream %d"

    new-array v6, v12, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v12, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v7

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$1;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/FramedStream;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 690
    monitor-exit v11

    return-void

    .line 692
    .end local v2    # "newStream":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_95
    monitor-exit v11
    :try_end_96
    .catchall {:try_start_18 .. :try_end_96} :catchall_b2

    .line 695
    invoke-virtual/range {p6 .. p6}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 696
    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 697
    iget-object v2, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v2, v9}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    .line 698
    return-void

    .line 702
    :cond_a7
    move-object/from16 v2, p6

    invoke-virtual {v0, v10, v2}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveHeaders(Ljava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    .line 703
    if-eqz v8, :cond_b1

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveFin()V

    .line 704
    :cond_b1
    return-void

    .line 692
    .end local v0    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_b2
    move-exception v0

    move-object/from16 v2, p6

    :goto_b5
    :try_start_b5
    monitor-exit v11
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b7

    throw v0

    :catchall_b7
    move-exception v0

    goto :goto_b5
.end method

.method public blacklist ping(ZII)V
    .registers 7
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .line 769
    if-eqz p1, :cond_e

    .line 770
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->removePing(I)Lcom/android/okhttp/internal/framed/Ping;
    invoke-static {v0, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2400(Lcom/android/okhttp/internal/framed/FramedConnection;I)Lcom/android/okhttp/internal/framed/Ping;

    move-result-object v0

    .line 771
    .local v0, "ping":Lcom/android/okhttp/internal/framed/Ping;
    if-eqz v0, :cond_d

    .line 772
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/Ping;->receive()V

    .line 774
    .end local v0    # "ping":Lcom/android/okhttp/internal/framed/Ping;
    :cond_d
    goto :goto_15

    .line 776
    :cond_e
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->writePingLater(ZIILcom/android/okhttp/internal/framed/Ping;)V
    invoke-static {v0, v1, p2, p3, v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2500(Lcom/android/okhttp/internal/framed/FramedConnection;ZIILcom/android/okhttp/internal/framed/Ping;)V

    .line 778
    :goto_15
    return-void
.end method

.method public blacklist priority(IIIZ)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .line 819
    return-void
.end method

.method public blacklist pushPromise(IILjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 823
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V
    invoke-static {v0, p2, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2600(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V

    .line 824
    return-void
.end method

.method public blacklist rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 707
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z
    invoke-static {v0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1300(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 708
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # invokes: Lcom/android/okhttp/internal/framed/FramedConnection;->pushResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    invoke-static {v0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2200(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 709
    return-void

    .line 711
    :cond_e
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 712
    .local v0, "rstStream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-eqz v0, :cond_19

    .line 713
    invoke-virtual {v0, p2}, Lcom/android/okhttp/internal/framed/FramedStream;->receiveRstStream(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 715
    :cond_19
    return-void
.end method

.method public blacklist settings(ZLcom/android/okhttp/internal/framed/Settings;)V
    .registers 15
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lcom/android/okhttp/internal/framed/Settings;

    .line 718
    const-wide/16 v0, 0x0

    .line 719
    .local v0, "delta":J
    const/4 v2, 0x0

    .line 720
    .local v2, "streamsToNotify":[Lcom/android/okhttp/internal/framed/FramedStream;
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v3

    .line 721
    :try_start_6
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v4, v4, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v4

    .line 722
    .local v4, "priorWriteWindowSize":I
    if-eqz p1, :cond_19

    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v6, v6, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {v6}, Lcom/android/okhttp/internal/framed/Settings;->clear()V

    .line 723
    :cond_19
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v6, v6, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {v6, p2}, Lcom/android/okhttp/internal/framed/Settings;->merge(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 724
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v6}, Lcom/android/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v6

    sget-object v7, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v6, v7, :cond_2d

    .line 725
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 727
    :cond_2d
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v6, v6, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {v6, v5}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v5

    .line 728
    .local v5, "peerInitialWindowSize":I
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_79

    if-eq v5, v4, :cond_79

    .line 729
    sub-int v6, v5, v4

    int-to-long v0, v6

    .line 730
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z
    invoke-static {v6}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2300(Lcom/android/okhttp/internal/framed/FramedConnection;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 731
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v6, v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->addBytesToWriteWindow(J)V

    .line 732
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # setter for: Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z
    invoke-static {v6, v7}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2302(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z

    .line 734
    :cond_50
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_79

    .line 735
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;
    invoke-static {v8}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/okhttp/internal/framed/FramedStream;

    move-object v2, v6

    .line 738
    :cond_79
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v8, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;

    const-string v9, "OkHttp %s settings"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/okhttp/internal/framed/FramedConnection;->access$1100(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    invoke-direct {v8, p0, v9, v7}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 743
    .end local v4    # "priorWriteWindowSize":I
    .end local v5    # "peerInitialWindowSize":I
    monitor-exit v3
    :try_end_93
    .catchall {:try_start_6 .. :try_end_93} :catchall_ac

    .line 744
    if-eqz v2, :cond_ab

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_ab

    .line 745
    array-length v3, v2

    :goto_9c
    if-ge v11, v3, :cond_ab

    aget-object v4, v2, v11

    .line 746
    .local v4, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    monitor-enter v4

    .line 747
    :try_start_a1
    invoke-virtual {v4, v0, v1}, Lcom/android/okhttp/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    .line 748
    monitor-exit v4

    .line 745
    .end local v4    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    add-int/lit8 v11, v11, 0x1

    goto :goto_9c

    .line 748
    .restart local v4    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_a8
    move-exception v3

    monitor-exit v4
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_a8

    throw v3

    .line 751
    .end local v4    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_ab
    return-void

    .line 743
    :catchall_ac
    move-exception v4

    :try_start_ad
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v4
.end method

.method public blacklist windowUpdate(IJ)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .line 801
    if-nez p1, :cond_16

    .line 802
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    monitor-enter v0

    .line 803
    :try_start_5
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-wide v2, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v2, p2

    iput-wide v2, v1, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 804
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 805
    monitor-exit v0

    goto :goto_27

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1

    .line 807
    :cond_16
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    .line 808
    .local v0, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-eqz v0, :cond_27

    .line 809
    monitor-enter v0

    .line 810
    :try_start_1f
    invoke-virtual {v0, p2, p3}, Lcom/android/okhttp/internal/framed/FramedStream;->addBytesToWriteWindow(J)V

    .line 811
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v1

    .line 814
    .end local v0    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_27
    :goto_27
    return-void
.end method
