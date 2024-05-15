.class Ljava/lang/invoke/Transformers$CollectArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectArguments"
.end annotation


# instance fields
.field private final greylist-max-o collector:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o collectorRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o pos:I

.field private final greylist-max-o range1:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o range2:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o referencesOffset:I

.field private final greylist-max-o stackFrameOffset:I

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodType;)V
    .registers 10
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "collector"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "pos"    # I
    .param p4, "adapterType"    # Ljava/lang/invoke/MethodType;

    .line 1557
    invoke-direct {p0, p4}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1559
    iput-object p1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1560
    iput-object p2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collector:Ljava/lang/invoke/MethodHandle;

    .line 1561
    iput p3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->pos:I

    .line 1563
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 1564
    .local v0, "numFilterArgs":I
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 1565
    .local v1, "numAdapterArgs":I
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    add-int v3, p3, v0

    invoke-static {v2, p3, v3}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collectorRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1567
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, p3}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1568
    add-int v2, p3, v0

    if-ge v2, v1, :cond_41

    .line 1569
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    add-int v4, p3, v0

    invoke-static {v2, v4, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    goto :goto_44

    .line 1571
    :cond_41
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1576
    :goto_44
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    .line 1577
    .local v2, "collectorRType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_55

    .line 1578
    iput v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    .line 1579
    iput v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    goto :goto_69

    .line 1580
    :cond_55
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 1581
    invoke-static {v2}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v4

    iput v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    .line 1582
    iput v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    goto :goto_69

    .line 1584
    :cond_64
    iput v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    .line 1585
    const/4 v3, 0x1

    iput v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    .line 1587
    :goto_69
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 10
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1592
    iget-object v0, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collector:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1593
    .local v0, "filterFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collectorRange:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1594
    iget-object v1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collector:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v1, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 1597
    iget-object v1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    .line 1598
    .local v1, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v1, v3, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1601
    iget v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    if-nez v3, :cond_2d

    iget v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    if-eqz v3, :cond_5a

    .line 1602
    :cond_2d
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1603
    .local v3, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v3, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    .line 1604
    new-instance v4, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1605
    .local v4, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    iget v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->pos:I

    iget-object v6, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v7, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v7, v7, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v4, v1, v5, v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1606
    iget-object v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v2, v5, v2

    invoke-static {v3, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1609
    .end local v3    # "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .end local v4    # "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    :cond_5a
    iget-object v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    if-eqz v2, :cond_6f

    .line 1610
    iget-object v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v3, v3, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    add-int/2addr v3, v4

    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    iget v4, v4, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    iget v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1615
    :cond_6f
    iget-object v2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v2, v1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 1616
    invoke-virtual {v1, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1617
    return-void
.end method
