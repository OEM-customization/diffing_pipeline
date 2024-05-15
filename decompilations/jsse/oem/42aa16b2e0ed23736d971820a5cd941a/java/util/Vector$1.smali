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
        "Ljava/util/Enumeration<",
        "TE;>;"
    }
.end annotation


# instance fields
.field blacklist count:I

.field final synthetic blacklist this$0:Ljava/util/Vector;


# direct methods
.method constructor blacklist <init>(Ljava/util/Vector;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/Vector;

    .line 339
    .local p0, "this":Ljava/util/Vector$1;, "Ljava/util/Vector$1;"
    iput-object p1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Vector$1;->count:I

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasMoreElements()Z
    .registers 3

    .line 343
    .local p0, "this":Ljava/util/Vector$1;, "Ljava/util/Vector$1;"
    iget v0, p0, Ljava/util/Vector$1;->count:I

    iget-object v1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    iget v1, v1, Ljava/util/Vector;->elementCount:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist core-platform-api test-api nextElement()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 347
    .local p0, "this":Ljava/util/Vector$1;, "Ljava/util/Vector$1;"
    iget-object v0, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    monitor-enter v0

    .line 348
    :try_start_3
    iget v1, p0, Ljava/util/Vector$1;->count:I

    iget-object v2, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    iget v2, v2, Ljava/util/Vector;->elementCount:I

    if-ge v1, v2, :cond_19

    .line 349
    iget-object v1, p0, Ljava/util/Vector$1;->this$0:Ljava/util/Vector;

    iget v2, p0, Ljava/util/Vector$1;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Vector$1;->count:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 351
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_22

    .line 352
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Vector Enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method
