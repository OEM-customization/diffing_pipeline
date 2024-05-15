.class Ljava/lang/invoke/Transformers$FoldArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FoldArguments"
.end annotation


# instance fields
.field private final combiner:Ljava/lang/invoke/MethodHandle;

.field private final combinerArgs:Ldalvik/system/EmulatedStackFrame$Range;

.field private final referencesOffset:I

.field private final stackFrameOffset:I

.field private final target:Ljava/lang/invoke/MethodHandle;

.field private final targetArgs:Ldalvik/system/EmulatedStackFrame$Range;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 6
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "combiner"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    const/4 v2, 0x0

    .line 1633
    invoke-static {p1, p2}, Ljava/lang/invoke/Transformers$FoldArguments;->deriveType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1635
    iput-object p1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1636
    iput-object p2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combiner:Ljava/lang/invoke/MethodHandle;

    .line 1638
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combinerArgs:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1639
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$FoldArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->targetArgs:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1641
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    .line 1642
    .local v0, "combinerRType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_31

    .line 1643
    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    .line 1644
    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    .line 1652
    :goto_30
    return-void

    .line 1645
    :cond_31
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1646
    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v1

    iput v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    .line 1647
    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    goto :goto_30

    .line 1649
    :cond_40
    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    .line 1650
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    goto :goto_30
.end method

.method private static deriveType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "combiner"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 1680
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_11

    .line 1681
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0

    .line 1684
    :cond_11
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 9
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1657
    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combiner:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1658
    .local v0, "combinerFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combinerArgs:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v0, v4, v5, v5}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1659
    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combiner:Ljava/lang/invoke/MethodHandle;

    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    move-wide v0, v0

    #Invalid reference
    #sput-object p10, field@29780
    nop

    .line 1662
    and-int/lit16 v6, v0, 0x106e

    int-to-double p8, v0

    move-wide v0, v0

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    .line 1665
    .local v2, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    if-nez v4, :cond_28

    iget v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    if-eqz v4, :cond_4b

    .line 1666
    :cond_28
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1667
    .local v1, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    .line 1668
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1669
    .local v3, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v3, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1670
    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1673
    .end local v1    # "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .end local v3    # "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    :cond_4b
    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->targetArgs:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    iget v6, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    invoke-virtual {p1, v2, v4, v5, v6}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1674
    iget-object v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    #Invalid reference
    #filled-new-array {}, type@4457
    nop

    .line 1676
    if-ne v1, v0, :cond_dd

    .line 1677
    return-void
    :cond_dd
.end method
