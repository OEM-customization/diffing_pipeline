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
.field private final pos:I

.field private final range1:Ldalvik/system/EmulatedStackFrame$Range;

.field private final range2:Ldalvik/system/EmulatedStackFrame$Range;

.field private final target:Ljava/lang/invoke/MethodHandle;

.field private final values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)V
    .registers 7
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "pos"    # I
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    .line 1700
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    array-length v2, p3

    add-int/2addr v2, p2

    invoke-virtual {v1, p2, v2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1701
    iput-object p1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1702
    iput p2, p0, Ljava/lang/invoke/Transformers$InsertArguments;->pos:I

    .line 1703
    iput-object p3, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    .line 1705
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$InsertArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1706
    .local v0, "type":Ljava/lang/invoke/MethodType;
    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1707
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    invoke-static {v0, p2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1708
    return-void
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 12
    .param p1, "stackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1712
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v7}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-static {v7}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v1

    .line 1715
    .local v1, "calleeFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v1, v7, v8, v8}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1719
    new-instance v6, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1720
    .local v6, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    iget v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->pos:I

    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v8, v8, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v9, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v9, v9, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v6, v1, v7, v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1723
    const/4 v5, 0x0

    .line 1724
    .local v5, "referencesCopied":I
    const/4 v0, 0x0

    .line 1725
    .local v0, "bytesCopied":I
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v7}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    .line 1726
    .local v4, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v2, v7, :cond_e2

    .line 1727
    iget v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->pos:I

    add-int/2addr v7, v2

    aget-object v3, v4, v7

    .line 1728
    .local v3, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 1729
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_58

    .line 1730
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 1747
    :cond_50
    :goto_50
    invoke-static {v3}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v7

    add-int/2addr v0, v7

    .line 1726
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1731
    :cond_58
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_6a

    .line 1732
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-virtual {v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_50

    .line 1733
    :cond_6a
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_7c

    .line 1734
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-virtual {v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_50

    .line 1735
    :cond_7c
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_8e

    .line 1736
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-virtual {v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_50

    .line 1737
    :cond_8e
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_a0

    .line 1738
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_50

    .line 1739
    :cond_a0
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_b2

    .line 1740
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_50

    .line 1741
    :cond_b2
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_c4

    .line 1742
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_50

    .line 1743
    :cond_c4
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_50

    .line 1744
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto/16 :goto_50

    .line 1749
    :cond_d7
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->values:[Ljava/lang/Object;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1750
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_55

    .line 1755
    .end local v3    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e2
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    if-eqz v7, :cond_f5

    .line 1756
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range2:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1757
    iget-object v8, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v8, v8, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    add-int/2addr v8, v5

    .line 1758
    iget-object v9, p0, Ljava/lang/invoke/Transformers$InsertArguments;->range1:Ldalvik/system/EmulatedStackFrame$Range;

    iget v9, v9, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    add-int/2addr v9, v0

    .line 1756
    invoke-virtual {p1, v1, v7, v8, v9}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1761
    :cond_f5
    iget-object v7, p0, Ljava/lang/invoke/Transformers$InsertArguments;->target:Ljava/lang/invoke/MethodHandle;

    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    const-wide/32 v0, 0x206e1169

    .line 1762
    if-ne v1, v0, :cond_1ad

    .line 1763
    return-void
    :cond_1ad
.end method
