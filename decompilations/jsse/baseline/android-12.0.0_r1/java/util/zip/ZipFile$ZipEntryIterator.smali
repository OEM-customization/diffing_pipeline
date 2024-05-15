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
        "Ljava/util/Enumeration<",
        "Ljava/util/zip/ZipEntry;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o i:I

.field final synthetic blacklist this$0:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor blacklist <init>(Ljava/util/zip/ZipFile;)V
    .registers 3

    .line 543
    iput-object p1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    .line 544
    # invokes: Ljava/util/zip/ZipFile;->ensureOpen()V
    invoke-static {p1}, Ljava/util/zip/ZipFile;->access$200(Ljava/util/zip/ZipFile;)V

    .line 545
    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 548
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasNext()Z
    .registers 4

    .line 552
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v0

    .line 553
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    # invokes: Ljava/util/zip/ZipFile;->ensureOpen()V
    invoke-static {v1}, Ljava/util/zip/ZipFile;->access$200(Ljava/util/zip/ZipFile;)V

    .line 554
    iget v1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    iget-object v2, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->total:I
    invoke-static {v2}, Ljava/util/zip/ZipFile;->access$300(Ljava/util/zip/ZipFile;)I

    move-result v2

    if-ge v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    monitor-exit v0

    return v1

    .line 555
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 540
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->next()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/zip/ZipEntry;
    .registers 9

    .line 563
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v0

    .line 564
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    # invokes: Ljava/util/zip/ZipFile;->ensureOpen()V
    invoke-static {v1}, Ljava/util/zip/ZipFile;->access$200(Ljava/util/zip/ZipFile;)V

    .line 565
    iget v1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    iget-object v2, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->total:I
    invoke-static {v2}, Ljava/util/zip/ZipFile;->access$300(Ljava/util/zip/ZipFile;)I

    move-result v2

    if-ge v1, v2, :cond_9a

    .line 568
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->jzfile:J
    invoke-static {v1}, Ljava/util/zip/ZipFile;->access$400(Ljava/util/zip/ZipFile;)J

    move-result-wide v1

    iget v3, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    # invokes: Ljava/util/zip/ZipFile;->getNextEntry(JI)J
    invoke-static {v1, v2, v3}, Ljava/util/zip/ZipFile;->access$500(JI)J

    move-result-wide v1

    .line 569
    .local v1, "jzentry":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_88

    .line 571
    iget-object v3, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->closeRequested:Z
    invoke-static {v3}, Ljava/util/zip/ZipFile;->access$600(Ljava/util/zip/ZipFile;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 572
    const-string v3, "ZipFile concurrently closed"

    .local v3, "message":Ljava/lang/String;
    goto :goto_3d

    .line 574
    .end local v3    # "message":Ljava/lang/String;
    :cond_33
    iget-object v3, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->jzfile:J
    invoke-static {v3}, Ljava/util/zip/ZipFile;->access$400(Ljava/util/zip/ZipFile;)J

    move-result-wide v3

    # invokes: Ljava/util/zip/ZipFile;->getZipMessage(J)Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/util/zip/ZipFile;->access$700(J)Ljava/lang/String;

    move-result-object v3

    .line 576
    .restart local v3    # "message":Ljava/lang/String;
    :goto_3d
    new-instance v4, Ljava/util/zip/ZipError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jzentry == 0,\n jzfile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    .line 577
    # getter for: Ljava/util/zip/ZipFile;->jzfile:J
    invoke-static {v6}, Ljava/util/zip/ZipFile;->access$400(Ljava/util/zip/ZipFile;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",\n total = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    .line 578
    # getter for: Ljava/util/zip/ZipFile;->total:I
    invoke-static {v6}, Ljava/util/zip/ZipFile;->access$300(Ljava/util/zip/ZipFile;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",\n name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    .line 579
    # getter for: Ljava/util/zip/ZipFile;->name:Ljava/lang/String;
    invoke-static {v6}, Ljava/util/zip/ZipFile;->access$800(Ljava/util/zip/ZipFile;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",\n i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",\n message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipError;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/zip/ZipFile$ZipEntryIterator;
    throw v4

    .line 584
    .end local v3    # "message":Ljava/lang/String;
    .restart local p0    # "this":Ljava/util/zip/ZipFile$ZipEntryIterator;
    :cond_88
    iget-object v3, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    const/4 v4, 0x0

    # invokes: Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;
    invoke-static {v3, v4, v1, v2}, Ljava/util/zip/ZipFile;->access$900(Ljava/util/zip/ZipFile;Ljava/lang/String;J)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 585
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    iget-object v4, p0, Ljava/util/zip/ZipFile$ZipEntryIterator;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->jzfile:J
    invoke-static {v4}, Ljava/util/zip/ZipFile;->access$400(Ljava/util/zip/ZipFile;)J

    move-result-wide v4

    # invokes: Ljava/util/zip/ZipFile;->freeEntry(JJ)V
    invoke-static {v4, v5, v1, v2}, Ljava/util/zip/ZipFile;->access$1000(JJ)V

    .line 586
    monitor-exit v0

    return-object v3

    .line 566
    .end local v1    # "jzentry":J
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    :cond_9a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/zip/ZipFile$ZipEntryIterator;
    throw v1

    .line 587
    .restart local p0    # "this":Ljava/util/zip/ZipFile$ZipEntryIterator;
    :catchall_a0
    move-exception v1

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_3 .. :try_end_a2} :catchall_a0

    throw v1
.end method

.method public bridge synthetic whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 540
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->nextElement()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r nextElement()Ljava/util/zip/ZipEntry;
    .registers 2

    .line 559
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;->next()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method
