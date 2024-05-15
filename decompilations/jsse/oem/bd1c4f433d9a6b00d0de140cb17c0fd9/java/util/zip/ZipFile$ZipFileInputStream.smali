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
.field protected jzentry:J

.field private pos:J

.field protected rem:J

.field protected size:J

.field final synthetic this$0:Ljava/util/zip/ZipFile;

.field private volatile zfisCloseRequested:Z


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;J)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/zip/ZipFile;
    .param p2, "jzentry"    # J

    .prologue
    .line 731
    iput-object p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 725
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->zfisCloseRequested:Z

    .line 732
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 733
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->-wrap3(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 734
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->-wrap4(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    .line 735
    iput-wide p2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    .line 736
    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    .prologue
    .line 792
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const v0, 0x7fffffff

    :goto_c
    return v0

    :cond_d
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    long-to-int v0, v0

    goto :goto_c
.end method

.method public close()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 800
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->zfisCloseRequested:Z

    if-eqz v0, :cond_7

    .line 801
    return-void

    .line 802
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->zfisCloseRequested:Z

    .line 804
    iput-wide v4, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 805
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v1

    .line 806
    :try_start_f
    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2e

    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2e

    .line 807
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v2

    iget-wide v4, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    invoke-static {v2, v3, v4, v5}, Ljava/util/zip/ZipFile;->-wrap8(JJ)V

    .line 808
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_41

    :cond_2e
    monitor-exit v1

    .line 811
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get3(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 812
    :try_start_36
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get3(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_44

    monitor-exit v1

    .line 814
    return-void

    .line 805
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0

    .line 811
    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 817
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    .line 818
    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 772
    new-array v0, v2, [B

    .line 773
    .local v0, "b":[B
    invoke-virtual {p0, v0, v3, v2}, Ljava/util/zip/ZipFile$ZipFileInputStream;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_f

    .line 774
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 776
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method public read([BII)I
    .registers 16
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-wrap6(Ljava/util/zip/ZipFile;)V

    .line 743
    iget-object v9, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v9

    .line 744
    :try_start_8
    iget-wide v10, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 745
    .local v10, "rem":J
    iget-wide v4, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_47

    .line 746
    .local v4, "pos":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_15

    .line 747
    const/4 v0, -0x1

    monitor-exit v9

    return v0

    .line 749
    :cond_15
    if-gtz p3, :cond_1a

    .line 750
    const/4 v0, 0x0

    monitor-exit v9

    return v0

    .line 752
    :cond_1a
    int-to-long v0, p3

    cmp-long v0, v0, v10

    if-lez v0, :cond_20

    .line 753
    long-to-int p3, v10

    .line 758
    :cond_20
    :try_start_20
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v0

    iget-wide v2, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->jzentry:J

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Ljava/util/zip/ZipFile;->-wrap0(JJJ[BII)I

    move-result p3

    .line 760
    if-lez p3, :cond_3a

    .line 761
    int-to-long v0, p3

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 762
    int-to-long v0, p3

    sub-long v0, v10, v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_47

    :cond_3a
    monitor-exit v9

    .line 765
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    .line 766
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    .line 768
    :cond_46
    return p3

    .line 743
    .end local v4    # "pos":J
    .end local v10    # "rem":J
    :catchall_47
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public size()J
    .registers 3

    .prologue
    .line 796
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->size:J

    return-wide v0
.end method

.method public skip(J)J
    .registers 8
    .param p1, "n"    # J

    .prologue
    .line 781
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    .line 782
    iget-wide p1, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 783
    :cond_8
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->pos:J

    .line 784
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    .line 785
    iget-wide v0, p0, Ljava/util/zip/ZipFile$ZipFileInputStream;->rem:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    .line 786
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->close()V

    .line 788
    :cond_1d
    return-wide p1
.end method
