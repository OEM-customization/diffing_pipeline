.class Ljava/util/zip/ZipFile$ZipEntryIterator;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZipEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/util/zip/ZipEntry;",
        ">;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field final synthetic this$0:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/zip/ZipFile;

    .prologue
    .line 511
    iput-object p1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    .line 512
    invoke-static {p1}, Ljava/util/zip/ZipFile;->-wrap7(Ljava/util/zip/ZipFile;)V

    .line 513
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 516
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .registers 4

    .prologue
    .line 520
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v1

    .line 521
    :try_start_3
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-wrap7(Ljava/util/zip/ZipFile;)V

    .line 522
    iget v0, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    iget-object v2, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v2}, Ljava/util/zip/ZipFile;->-get4(Ljava/util/zip/ZipFile;)I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_17

    move-result v2

    if-ge v0, v2, :cond_15

    const/4 v0, 0x1

    :goto_13
    monitor-exit v1

    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13

    .line 520
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 530
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->next()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/zip/ZipEntry;
    .registers 11

    .prologue
    .line 531
    iget-object v5, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v5

    .line 532
    :try_start_3
    iget-object v4, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v4}, Ljava/util/zip/ZipFile;->-wrap7(Ljava/util/zip/ZipFile;)V

    .line 533
    iget v4, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    iget-object v6, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v6}, Ljava/util/zip/ZipFile;->-get4(Ljava/util/zip/ZipFile;)I

    move-result v6

    if-lt v4, v6, :cond_1b

    .line 534
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    throw v4
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    .line 531
    :catchall_18
    move-exception v4

    monitor-exit v5

    throw v4

    .line 536
    :cond_1b
    :try_start_1b
    iget-object v4, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v4}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v6

    iget v4, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    add-int/lit8 v8, v4, 0x1

    iput v8, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    invoke-static {v6, v7, v4}, Ljava/util/zip/ZipFile;->-wrap5(JI)J

    move-result-wide v0

    .line 537
    .local v0, "jzentry":J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_a1

    .line 539
    iget-object v4, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v4}, Ljava/util/zip/ZipFile;->-get0(Ljava/util/zip/ZipFile;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 540
    const-string/jumbo v2, "ZipFile concurrently closed"

    .line 544
    .local v2, "message":Ljava/lang/String;
    :goto_3c
    new-instance v4, Ljava/util/zip/ZipError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "jzentry == 0,\n jzfile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 545
    iget-object v7, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v7}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v8

    .line 544
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 546
    const-string/jumbo v7, ",\n total = "

    .line 544
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 546
    iget-object v7, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v7}, Ljava/util/zip/ZipFile;->-get4(Ljava/util/zip/ZipFile;)I

    move-result v7

    .line 544
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 547
    const-string/jumbo v7, ",\n name = "

    .line 544
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 547
    iget-object v7, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v7}, Ljava/util/zip/ZipFile;->-get2(Ljava/util/zip/ZipFile;)Ljava/lang/String;

    move-result-object v7

    .line 544
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 548
    const-string/jumbo v7, ",\n i = "

    .line 544
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 548
    iget v7, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    .line 544
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 549
    const-string/jumbo v7, ",\n message = "

    .line 544
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/zip/ZipError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 542
    .end local v2    # "message":Ljava/lang/String;
    :cond_96
    iget-object v4, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v4}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipFile;->-wrap1(J)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_3c

    .line 552
    .end local v2    # "message":Ljava/lang/String;
    :cond_a1
    iget-object v4, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    const/4 v6, 0x0

    invoke-static {v4, v6, v0, v1}, Ljava/util/zip/ZipFile;->-wrap2(Ljava/util/zip/ZipFile;Ljava/lang/String;J)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 553
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    iget-object v4, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v4}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v6

    invoke-static {v6, v7, v0, v1}, Ljava/util/zip/ZipFile;->-wrap8(JJ)V
    :try_end_b1
    .catchall {:try_start_1b .. :try_end_b1} :catchall_18

    monitor-exit v5

    .line 554
    return-object v3
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 526
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->nextElement()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/util/zip/ZipEntry;
    .registers 2

    .prologue
    .line 527
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->next()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method
