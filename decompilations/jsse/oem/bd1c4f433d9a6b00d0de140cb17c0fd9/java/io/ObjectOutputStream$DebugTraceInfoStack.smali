.class Ljava/io/ObjectOutputStream$DebugTraceInfoStack;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugTraceInfoStack"
.end annotation


# instance fields
.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 2519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    .line 2521
    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 2527
    iget-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2528
    return-void
.end method

.method pop()V
    .registers 3

    .prologue
    .line 2534
    iget-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2535
    return-void
.end method

.method push(Ljava/lang/String;)V
    .registers 5
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 2541
    iget-object v0, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\t- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2542
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2549
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    .line 2550
    iget-object v2, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "i":I
    :goto_13
    if-lez v1, :cond_33

    .line 2551
    iget-object v2, p0, Ljava/io/ObjectOutputStream$DebugTraceInfoStack;->stack:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    const-string/jumbo v2, "\n"

    :goto_29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2550
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 2551
    :cond_2f
    const-string/jumbo v2, ""

    goto :goto_29

    .line 2554
    .end local v1    # "i":I
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
