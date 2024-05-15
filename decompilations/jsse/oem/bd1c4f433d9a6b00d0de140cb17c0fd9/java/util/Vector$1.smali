.class Ljava/util/Vector$1;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Vector;->elements()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljava/util/Vector;)V
    .registers 3

    .prologue
    .line 1
    .local p1, "this$0":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iput-object p1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Vector$1;->count:I

    .line 1
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    .prologue
    .line 343
    iget v0, p0, Ljava/util/Vector$1;->count:I

    iget-object v1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    iget v1, v1, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    monitor-enter v1

    .line 348
    :try_start_3
    iget v0, p0, Ljava/util/Vector$1;->count:I

    iget-object v2, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    iget v2, v2, Ljava/util/Vector;->elementCount:I

    if-ge v0, v2, :cond_19

    .line 349
    iget-object v0, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    iget v2, p0, Ljava/util/Vector$1;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Vector$1;->count:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_23

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_19
    monitor-exit v1

    .line 352
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "Vector Enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method
