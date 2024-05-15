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
.field private final greylist-max-o combiner:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o combinerArgs:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o referencesOffset:I

.field private final greylist-max-o stackFrameOffset:I

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o targetArgs:Ldalvik/system/EmulatedStackFrame$Range;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 6
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "combiner"    # Ljava/lang/invoke/MethodHandle;

    .line 1634
    invoke-static {p1, p2}, Ljava/lang/invoke/Transformers$FoldArguments;->deriveType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1636
    iput-object p1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1637
    iput-object p2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combiner:Ljava/lang/invoke/MethodHandle;

    .line 1639
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combinerArgs:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1640
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$FoldArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$FoldArguments;->targetArgs:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1642
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    .line 1643
    .local v0, "combinerRType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_31

    .line 1644
    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    .line 1645
    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    goto :goto_45

    .line 1646
    :cond_31
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1647
    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v1

    iput v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    .line 1648
    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    goto :goto_45

    .line 1650
    :cond_40
    iput v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    .line 1651
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    .line 1653
    :goto_45
    return-void
.end method

.method private static greylist-max-o deriveType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodType;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "combiner"    # Ljava/lang/invoke/MethodHandle;

    .line 1681
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_11

    .line 1682
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0

    .line 1685
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
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 8
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1658
    iget-object v0, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combiner:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1659
    .local v0, "combinerFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combinerArgs:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1660
    iget-object v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->combiner:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v1, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 1663
    iget-object v1, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    .line 1666
    .local v1, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget v3, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    if-nez v3, :cond_28

    iget v3, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    if-eqz v3, :cond_4b

    .line 1667
    :cond_28
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1668
    .local v3, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v3, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->makeReturnValueAccessor()V

    .line 1669
    new-instance v4, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1670
    .local v4, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v4, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1671
    iget-object v5, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v2, v5, v2

    invoke-static {v3, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1674
    .end local v3    # "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .end local v4    # "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    :cond_4b
    iget-object v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->targetArgs:Ldalvik/system/EmulatedStackFrame$Range;

    iget v3, p0, Ljava/lang/invoke/Transformers$FoldArguments;->referencesOffset:I

    iget v4, p0, Ljava/lang/invoke/Transformers$FoldArguments;->stackFrameOffset:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1675
    iget-object v2, p0, Ljava/lang/invoke/Transformers$FoldArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v2, v1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 1677
    invoke-virtual {v1, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1678
    return-void
.end method
