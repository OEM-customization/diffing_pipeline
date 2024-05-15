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
.field private final collector:Ljava/lang/invoke/MethodHandle;

.field private final collectorRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final pos:I

.field private final range1:Ldalvik/system/EmulatedStackFrame$Range;

.field private final range2:Ldalvik/system/EmulatedStackFrame$Range;

.field private final referencesOffset:I

.field private final stackFrameOffset:I

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;ILjava/lang/invoke/MethodType;)V
    .registers 11
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "collector"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "pos"    # I
    .param p4, "adapterType"    # Ljava/lang/invoke/MethodType;

    .prologue
    const/4 v5, 0x0

    .line 1556
    invoke-direct {p0, p4}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1558
    iput-object p1, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1559
    iput-object p2, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collector:Ljava/lang/invoke/MethodHandle;

    .line 1560
    iput p3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->pos:I

    .line 1562
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    .line 1563
    .local v2, "numFilterArgs":I
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    .line 1564
    .local v1, "numAdapterArgs":I
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    add-int v4, p3, v2

    invoke-static {v3, p3, v4}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v3

    iput-object v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collectorRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1566
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-static {v3, v5, p3}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v3

    iput-object v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1567
    add-int v3, p3, v2

    if-ge v3, v1, :cond_51

    .line 1568
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$CollectArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    add-int v4, p3, v2

    invoke-static {v3, v4, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v3

    iput-object v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1575
    :goto_40
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    .line 1576
    .local v0, "collectorRType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_55

    .line 1577
    iput v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    .line 1578
    iput v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    .line 1586
    :goto_50
    return-void

    .line 1570
    .end local v0    # "collectorRType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_51
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    goto :goto_40

    .line 1579
    .restart local v0    # "collectorRType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_55
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 1580
    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v3

    iput v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    .line 1581
    iput v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    goto :goto_50

    .line 1583
    :cond_64
    iput v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    .line 1584
    const/4 v3, 0x1

    iput v3, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    goto :goto_50
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 10
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1591
    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collector:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1592
    .local v0, "filterFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collectorRange:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v0, v4, v7, v7}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1593
    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->collector:Ljava/lang/invoke/MethodHandle;

    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    move-wide v0, v0

    #Invalid reference
    #sput-object p9, field@33876
    nop

    .line 1596
    shl-int/2addr v6, v0

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    .line 1597
    .local v2, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v2, v4, v7, v7}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1600
    iget v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    if-nez v4, :cond_2d

    iget v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    if-eqz v4, :cond_5a

    .line 1601
    :cond_2d
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1602
    .local v1, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    .line 1603
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1604
    .local v3, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    iget v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->pos:I

    iget-object v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, v5, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v6, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v3, v2, v4, v5, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1605
    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1608
    .end local v1    # "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .end local v3    # "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    :cond_5a
    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    if-eqz v4, :cond_71

    .line 1609
    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1610
    iget-object v5, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, v5, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget v6, p0, Ljava/lang/invoke/Transformers$CollectArguments;->referencesOffset:I

    add-int/2addr v5, v6

    .line 1611
    iget-object v6, p0, Ljava/lang/invoke/Transformers$CollectArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    iget v7, p0, Ljava/lang/invoke/Transformers$CollectArguments;->stackFrameOffset:I

    add-int/2addr v6, v7

    .line 1609
    invoke-virtual {p1, v2, v4, v5, v6}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1614
    :cond_71
    iget-object v4, p0, Ljava/lang/invoke/Transformers$CollectArguments;->target:Ljava/lang/invoke/MethodHandle;

    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    #Invalid reference
    #filled-new-array {}, type@4457
    nop

    .line 1615
    if-ne v1, v0, :cond_10a

    .line 1616
    return-void
    :cond_10a
.end method
