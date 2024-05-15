.class Ljava/util/zip/ZipFile$ZipFileInputStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZipFileInputStream"
.end annotation


# instance fields
.field protected greylist-max-o jzentry:J

.field private greylist-max-o pos:J

.field protected greylist-max-o rem:J

.field protected greylist-max-o size:J

.field final synthetic blacklist this$0:Ljava/util/zip/ZipFile;

.field private volatile greylist-max-o zfisCloseRequested:Z


# direct methods
.method constructor blacklist <init>(Ljava/util/zip/ZipFile;J)V
    .registers 6
    .param p2, "jzentry"    # J

    .line 778
    iput-object p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 772
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->zfisCloseRequested:Z

    .line 779
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 780
    # invokes: Ljava/util/zip/ZipFile;->getEntryCSize(J)J
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->access$1100(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 781
    # invokes: Ljava/util/zip/ZipFile;->getEntrySize(J)J
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->access$1200(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    .line 782
    iput-wide p2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    .line 783
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 5

    .line 844
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    const v0, 0x7fffffff

    goto :goto_e

    :cond_d
    long-to-int v0, v0

    :goto_e
    return v0
.end method

.method public whitelist test-api close()V
    .registers 8

    .line 852
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->zfisCloseRequested:Z

    if-eqz v0, :cond_5

    .line 853
    return-void

    .line 854
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->zfisCloseRequested:Z

    .line 856
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 857
    iget-object v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v2

    .line 858
    :try_start_f
    iget-wide v3, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_2c

    iget-object v3, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->jzfile:J
    invoke-static {v3}, Ljava/util/zip/ZipFile;->access$400(Ljava/util/zip/ZipFile;)J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-eqz v3, :cond_2c

    .line 859
    iget-object v3, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->jzfile:J
    invoke-static {v3}, Ljava/util/zip/ZipFile;->access$400(Ljava/util/zip/ZipFile;)J

    move-result-wide v3

    iget-wide v5, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    # invokes: Ljava/util/zip/ZipFile;->freeEntry(JJ)V
    invoke-static {v3, v4, v5, v6}, Ljava/util/zip/ZipFile;->access$1000(JJ)V

    .line 860
    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    .line 862
    :cond_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_42

    .line 863
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;
    invoke-static {v0}, Ljava/util/zip/ZipFile;->access$000(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 864
    :try_start_34
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;
    invoke-static {v1}, Ljava/util/zip/ZipFile;->access$000(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_3f

    throw v1

    .line 862
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 869
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    .line 870
    return-void
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 825
    .local v1, "b":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->read([BII)I

    move-result v3

    if-ne v3, v0, :cond_f

    .line 826
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 828
    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 23
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    move-object/from16 v1, p0

    move/from16 v2, p3

    iget-object v0, v1, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    # invokes: Ljava/util/zip/ZipFile;->ensureOpenOrZipException()V
    invoke-static {v0}, Ljava/util/zip/ZipFile;->access$1300(Ljava/util/zip/ZipFile;)V

    .line 794
    iget-object v3, v1, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v3

    .line 795
    :try_start_c
    iget-wide v4, v1, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 796
    .local v4, "rem":J
    iget-wide v6, v1, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 797
    .local v6, "pos":J
    const-wide/16 v17, 0x0

    cmp-long v0, v4, v17

    if-nez v0, :cond_19

    .line 798
    const/4 v0, -0x1

    monitor-exit v3

    return v0

    .line 800
    :cond_19
    if-gtz v2, :cond_1e

    .line 801
    const/4 v0, 0x0

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_4f

    return v0

    .line 803
    :cond_1e
    int-to-long v8, v2

    cmp-long v0, v8, v4

    if-lez v0, :cond_25

    .line 804
    long-to-int v0, v4

    move v2, v0

    .line 810
    .end local p3    # "len":I
    .local v2, "len":I
    :cond_25
    :try_start_25
    iget-object v0, v1, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->jzfile:J
    invoke-static {v0}, Ljava/util/zip/ZipFile;->access$400(Ljava/util/zip/ZipFile;)J

    move-result-wide v8

    iget-wide v10, v1, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    move-wide v12, v6

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, v2

    # invokes: Ljava/util/zip/ZipFile;->read(JJJ[BII)I
    invoke-static/range {v8 .. v16}, Ljava/util/zip/ZipFile;->access$1400(JJJ[BII)I

    move-result v0

    move v2, v0

    .line 812
    if-lez v2, :cond_44

    .line 813
    int-to-long v8, v2

    add-long/2addr v8, v6

    iput-wide v8, v1, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 814
    int-to-long v8, v2

    sub-long v8, v4, v8

    iput-wide v8, v1, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 816
    .end local v4    # "rem":J
    .end local v6    # "pos":J
    :cond_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_52

    .line 817
    iget-wide v3, v1, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    cmp-long v0, v3, v17

    if-nez v0, :cond_4e

    .line 818
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    .line 820
    :cond_4e
    return v2

    .line 816
    .end local v2    # "len":I
    .restart local p3    # "len":I
    :catchall_4f
    move-exception v0

    .end local p3    # "len":I
    .restart local v2    # "len":I
    :goto_50
    :try_start_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_52

    throw v0

    :catchall_52
    move-exception v0

    goto :goto_50
.end method

.method public greylist-max-o size()J
    .registers 3

    .line 848
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    return-wide v0
.end method

.method public whitelist test-api skip(J)J
    .registers 7
    .param p1, "n"    # J

    .line 833
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_8

    .line 834
    iget-wide p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 835
    :cond_8
    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 836
    sub-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 837
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 838
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    .line 840
    :cond_19
    return-wide p1
.end method
