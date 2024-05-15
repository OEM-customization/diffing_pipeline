.class Ljava/lang/invoke/Transformers$InsertArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsertArguments"
.end annotation


# instance fields
.field private final greylist-max-o pos:I

.field private final greylist-max-o range1:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o range2:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o values:[Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)V
    .registers 6
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "pos"    # I
    .param p3, "values"    # [Ljava/lang/Object;

    .line 1701
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    array-length v1, p3

    add-int/2addr v1, p2

    invoke-virtual {v0, p2, v1}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1702
    iput-object p1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1703
    iput p2, p0, Ljava/lang/invoke/Transformers$InsertArguments;->pos:I

    .line 1704
    iput-object p3, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    .line 1706
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$InsertArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1707
    .local v0, "type":Ljava/lang/invoke/MethodType;
    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1708
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    invoke-static {v0, p2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1709
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 11
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1713
    iget-object v0, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1716
    .local v0, "calleeFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1720
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1721
    .local v1, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    iget v2, p0, Ljava/lang/invoke/Transformers$InsertArguments;->pos:I

    iget-object v3, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v3, v3, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v4, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v4, v4, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v1, v0, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1724
    const/4 v2, 0x0

    .line 1725
    .local v2, "referencesCopied":I
    const/4 v3, 0x0

    .line 1726
    .local v3, "bytesCopied":I
    iget-object v4, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    .line 1727
    .local v4, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    iget-object v6, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v5, v6, :cond_e2

    .line 1728
    iget v6, p0, Ljava/lang/invoke/Transformers$InsertArguments;->pos:I

    add-int/2addr v6, v5

    aget-object v6, v4, v6

    .line 1729
    .local v6, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_d5

    .line 1730
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_52

    .line 1731
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v1, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto/16 :goto_cf

    .line 1732
    :cond_52
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_64

    .line 1733
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v1, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_cf

    .line 1734
    :cond_64
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_76

    .line 1735
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-virtual {v1, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_cf

    .line 1736
    :cond_76
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_88

    .line 1737
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-virtual {v1, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_cf

    .line 1738
    :cond_88
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_9a

    .line 1739
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_cf

    .line 1740
    :cond_9a
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_ac

    .line 1741
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_cf

    .line 1742
    :cond_ac
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_be

    .line 1743
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v1, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_cf

    .line 1744
    :cond_be
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_cf

    .line 1745
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1748
    :cond_cf
    :goto_cf
    invoke-static {v6}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_de

    .line 1750
    :cond_d5
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v5

    invoke-virtual {v1, v7, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1751
    add-int/lit8 v2, v2, 0x1

    .line 1727
    .end local v6    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_de
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2f

    .line 1756
    .end local v5    # "i":I
    :cond_e2
    iget-object v5, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    if-eqz v5, :cond_f3

    .line 1757
    iget-object v6, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    add-int/2addr v6, v2

    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v7, v7, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    add-int/2addr v7, v3

    invoke-virtual {p1, v0, v5, v6, v7}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1762
    :cond_f3
    iget-object v5, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v5, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 1763
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1764
    return-void
.end method
