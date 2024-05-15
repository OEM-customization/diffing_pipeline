.class public Ljava/lang/invoke/Transformers$ExplicitCastArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExplicitCastArguments"
.end annotation


# instance fields
.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 1774
    invoke-direct {p0, p2}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1775
    iput-object p1, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1776
    return-void
.end method

.method private static box(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 8
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2115
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 2116
    .local v0, "boxed":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_15

    .line 2117
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2135
    .end local v0    # "boxed":Ljava/lang/Object;
    :goto_d
    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2136
    return-void

    .line 2118
    .restart local v0    # "boxed":Ljava/lang/Object;
    :cond_15
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_22

    .line 2119
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_d

    .line 2120
    :cond_22
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2f

    .line 2121
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_d

    .line 2122
    :cond_2f
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3c

    .line 2123
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_d

    .line 2124
    :cond_3c
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_49

    .line 2125
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_d

    .line 2126
    :cond_49
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_56

    .line 2127
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_d

    .line 2128
    :cond_56
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_63

    .line 2129
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_d

    .line 2130
    :cond_63
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_70

    .line 2131
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_d

    .line 2133
    :cond_70
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto :goto_d
.end method

.method private static explicitCast(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 6
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2140
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2141
    invoke-static {p0, p2, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 2168
    :goto_9
    return-void

    .line 2142
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_30

    .line 2143
    invoke-virtual {p0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2144
    .local v0, "ref":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2147
    invoke-virtual {p2, v0, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_9

    .line 2148
    :cond_1e
    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2150
    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_9

    .line 2153
    :cond_2c
    invoke-static {v0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unbox(Ljava/lang/Object;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_9

    .line 2155
    .end local v0    # "ref":Ljava/lang/Object;
    :cond_30
    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 2157
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_42

    .line 2158
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastFromBoolean(ZLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_9

    .line 2159
    :cond_42
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_4a

    .line 2160
    invoke-static {p0, p1, p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastToBoolean(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V

    goto :goto_9

    .line 2162
    :cond_4a
    invoke-static {p0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastPrimitives(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_9

    .line 2166
    :cond_4e
    invoke-static {p0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->box(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_9
.end method

.method private explicitCastArguments(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V
    .registers 10
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p2, "targetFrame"    # Ldalvik/system/EmulatedStackFrame;

    .prologue
    .line 1790
    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1791
    .local v2, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1792
    new-instance v4, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1793
    .local v4, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v4, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1795
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1796
    .local v0, "fromTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v5, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1797
    .local v3, "toTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    array-length v5, v0

    if-ge v1, v5, :cond_30

    .line 1798
    aget-object v5, v0, v1

    aget-object v6, v3, v1

    invoke-static {v2, v5, v4, v6}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCast(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1797
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1800
    :cond_30
    return-void
.end method

.method private static explicitCastFromBoolean(ZLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 7
    .param p0, "fromValue"    # Z
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1832
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_c

    const/4 v0, 0x1

    .line 1833
    .local v0, "value":I
    :goto_3
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_e

    .line 1834
    int-to-byte v1, v0

    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 1850
    :goto_b
    return-void

    .line 1832
    .end local v0    # "value":I
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_3

    .line 1835
    :cond_e
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_17

    .line 1836
    int-to-char v1, v0

    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_b

    .line 1837
    :cond_17
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_20

    .line 1838
    int-to-short v1, v0

    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_b

    .line 1839
    :cond_20
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_28

    .line 1840
    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_b

    .line 1841
    :cond_28
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_31

    .line 1842
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_b

    .line 1843
    :cond_31
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_3a

    .line 1844
    int-to-float v1, v0

    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_b

    .line 1845
    :cond_3a
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_43

    .line 1846
    int-to-double v2, v0

    invoke-virtual {p1, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_b

    .line 1848
    :cond_43
    invoke-static {p2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto :goto_b
.end method

.method private static explicitCastPrimitives(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 14
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2025
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_c

    .line 2026
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsByte(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)B

    move-result v0

    .line 2027
    .local v0, "value":B
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 2049
    .end local v0    # "value":B
    :goto_b
    return-void

    .line 2028
    :cond_c
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_18

    .line 2029
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsChar(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)C

    move-result v1

    .line 2030
    .local v1, "value":C
    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_b

    .line 2031
    .end local v1    # "value":C
    :cond_18
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_24

    .line 2032
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsShort(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)S

    move-result v8

    .line 2033
    .local v8, "value":S
    invoke-virtual {p2, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_b

    .line 2034
    .end local v8    # "value":S
    :cond_24
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_30

    .line 2035
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsInt(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)I

    move-result v5

    .line 2036
    .local v5, "value":I
    invoke-virtual {p2, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_b

    .line 2037
    .end local v5    # "value":I
    :cond_30
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_3c

    .line 2038
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsLong(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)J

    move-result-wide v6

    .line 2039
    .local v6, "value":J
    invoke-virtual {p2, v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_b

    .line 2040
    .end local v6    # "value":J
    :cond_3c
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_48

    .line 2041
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsFloat(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)F

    move-result v4

    .line 2042
    .local v4, "value":F
    invoke-virtual {p2, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_b

    .line 2043
    .end local v4    # "value":F
    :cond_48
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v9, :cond_54

    .line 2044
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsDouble(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)D

    move-result-wide v2

    .line 2045
    .local v2, "value":D
    invoke-virtual {p2, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_b

    .line 2047
    .end local v2    # "value":D
    :cond_54
    invoke-static {p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto :goto_b
.end method

.method private explicitCastReturnValue(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V
    .registers 9
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p2, "targetFrame"    # Ldalvik/system/EmulatedStackFrame;

    .prologue
    .line 1804
    iget-object v4, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    .line 1805
    .local v0, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    .line 1806
    .local v2, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_2e

    .line 1807
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1808
    .local v3, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v3, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1809
    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->makeReturnValueAccessor()V

    .line 1810
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_34

    .line 1811
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1812
    invoke-static {v3, v2}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unboxNull(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1823
    .end local v3    # "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    :cond_2e
    :goto_2e
    return-void

    .line 1814
    .restart local v3    # "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    :cond_2f
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_2e

    .line 1817
    :cond_34
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1818
    .local v1, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v1, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1819
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->makeReturnValueAccessor()V

    .line 1820
    iget-object v4, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v1, v4, v3, v5}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCast(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_2e
.end method

.method private static explicitCastToBoolean(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;)V
    .registers 5
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2017
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsByte(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)B

    move-result v0

    .line 2018
    .local v0, "byteValue":B
    invoke-static {v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->toBoolean(B)Z

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2019
    return-void
.end method

.method private static readPrimitiveAsByte(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)B
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)B"
        }
    .end annotation

    .prologue
    .line 1862
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    .line 1863
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    return v0

    .line 1864
    :cond_9
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_13

    .line 1865
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 1866
    :cond_13
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1d

    .line 1867
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 1868
    :cond_1d
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_27

    .line 1869
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 1870
    :cond_27
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 1871
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 1872
    :cond_32
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3d

    .line 1873
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 1874
    :cond_3d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_48

    .line 1875
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 1877
    :cond_48
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 1878
    const/4 v0, 0x0

    return v0
.end method

.method private static readPrimitiveAsChar(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)C
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)C"
        }
    .end annotation

    .prologue
    .line 1884
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1885
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-char v0, v0

    return v0

    .line 1886
    :cond_a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_13

    .line 1887
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    return v0

    .line 1888
    :cond_13
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1d

    .line 1889
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-char v0, v0

    return v0

    .line 1890
    :cond_1d
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_27

    .line 1891
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-char v0, v0

    return v0

    .line 1892
    :cond_27
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 1893
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 1894
    :cond_32
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3d

    .line 1895
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 1896
    :cond_3d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_48

    .line 1897
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 1899
    :cond_48
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 1900
    const/4 v0, 0x0

    return v0
.end method

.method private static readPrimitiveAsDouble(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)D
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)D"
        }
    .end annotation

    .prologue
    .line 1994
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1995
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 1996
    :cond_a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 1997
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 1998
    :cond_14
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    .line 1999
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 2000
    :cond_1e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_28

    .line 2001
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 2002
    :cond_28
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 2003
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 2004
    :cond_32
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3c

    .line 2005
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 2006
    :cond_3c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_45

    .line 2007
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    return-wide v0

    .line 2009
    :cond_45
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 2010
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static readPrimitiveAsFloat(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)F
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    .prologue
    .line 1972
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1973
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-float v0, v0

    return v0

    .line 1974
    :cond_a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 1975
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-float v0, v0

    return v0

    .line 1976
    :cond_14
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    .line 1977
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-float v0, v0

    return v0

    .line 1978
    :cond_1e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_28

    .line 1979
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 1980
    :cond_28
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 1981
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-float v0, v0

    return v0

    .line 1982
    :cond_32
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3b

    .line 1983
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    return v0

    .line 1984
    :cond_3b
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_45

    .line 1985
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 1987
    :cond_45
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 1988
    const/4 v0, 0x0

    return v0
.end method

.method private static readPrimitiveAsInt(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)I
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1928
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    .line 1929
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    return v0

    .line 1930
    :cond_9
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_12

    .line 1931
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    return v0

    .line 1932
    :cond_12
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1b

    .line 1933
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    return v0

    .line 1934
    :cond_1b
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_24

    .line 1935
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    return v0

    .line 1936
    :cond_24
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2e

    .line 1937
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 1938
    :cond_2e
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_38

    .line 1939
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 1940
    :cond_38
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_42

    .line 1941
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 1943
    :cond_42
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 1944
    const/4 v0, 0x0

    return v0
.end method

.method private static readPrimitiveAsLong(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)J
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 1950
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1951
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1952
    :cond_a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 1953
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1954
    :cond_14
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    .line 1955
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1956
    :cond_1e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_28

    .line 1957
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1958
    :cond_28
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_31

    .line 1959
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    return-wide v0

    .line 1960
    :cond_31
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3b

    .line 1961
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-long v0, v0

    return-wide v0

    .line 1962
    :cond_3b
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_45

    .line 1963
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 1965
    :cond_45
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 1966
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static readPrimitiveAsShort(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)S
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class",
            "<*>;)S"
        }
    .end annotation

    .prologue
    .line 1906
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1907
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-short v0, v0

    return v0

    .line 1908
    :cond_a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 1909
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-short v0, v0

    return v0

    .line 1910
    :cond_14
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1d

    .line 1911
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    return v0

    .line 1912
    :cond_1d
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_27

    .line 1913
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-short v0, v0

    return v0

    .line 1914
    :cond_27
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 1915
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 1916
    :cond_32
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3d

    .line 1917
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 1918
    :cond_3d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_48

    .line 1919
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 1921
    :cond_48
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 1922
    const/4 v0, 0x0

    return v0
.end method

.method private static throwUnexpectedType(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1826
    .local p0, "unexpectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toBoolean(B)Z
    .registers 3
    .param p0, "value"    # B

    .prologue
    const/4 v0, 0x1

    .line 1857
    and-int/lit8 v1, p0, 0x1

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static unbox(Ljava/lang/Object;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 4
    .param p0, "ref"    # Ljava/lang/Object;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2106
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_6

    .line 2107
    invoke-static {p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unboxNull(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 2111
    :goto_5
    return-void

    .line 2109
    :cond_6
    invoke-static {p0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unboxNonNull(Ljava/lang/Object;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_5
.end method

.method private static unboxNonNull(Ljava/lang/Object;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 8
    .param p0, "ref"    # Ljava/lang/Object;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2075
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_3a

    .line 2076
    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_12

    .line 2077
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2102
    :goto_11
    return-void

    .line 2078
    .restart local p0    # "ref":Ljava/lang/Object;
    :cond_12
    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_1a

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_2a

    .line 2079
    :cond_1a
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-int v1, v2

    int-to-byte v0, v1

    .line 2080
    .local v0, "b":B
    invoke-static {v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->toBoolean(B)Z

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_11

    .line 2082
    .end local v0    # "b":B
    .restart local p0    # "ref":Ljava/lang/Object;
    :cond_2a
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    int-to-byte v0, v1

    .line 2083
    .restart local v0    # "b":B
    invoke-static {v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->toBoolean(B)Z

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_11

    .line 2085
    .end local v0    # "b":B
    .restart local p0    # "ref":Ljava/lang/Object;
    :cond_3a
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_48

    .line 2086
    check-cast p0, Ljava/lang/Byte;

    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_11

    .line 2087
    .restart local p0    # "ref":Ljava/lang/Object;
    :cond_48
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_56

    .line 2088
    check-cast p0, Ljava/lang/Character;

    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_11

    .line 2089
    .restart local p0    # "ref":Ljava/lang/Object;
    :cond_56
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_64

    .line 2090
    check-cast p0, Ljava/lang/Short;

    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_11

    .line 2091
    .restart local p0    # "ref":Ljava/lang/Object;
    :cond_64
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_72

    .line 2092
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_11

    .line 2093
    .restart local p0    # "ref":Ljava/lang/Object;
    :cond_72
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_80

    .line 2094
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_11

    .line 2095
    .restart local p0    # "ref":Ljava/lang/Object;
    :cond_80
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_8e

    .line 2096
    check-cast p0, Ljava/lang/Float;

    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_11

    .line 2097
    .restart local p0    # "ref":Ljava/lang/Object;
    :cond_8e
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_9d

    .line 2098
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto/16 :goto_11

    .line 2100
    .restart local p0    # "ref":Ljava/lang/Object;
    :cond_9d
    invoke-static {p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto/16 :goto_11
.end method

.method private static unboxNull(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 4
    .param p0, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 2052
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    .line 2053
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2071
    :goto_8
    return-void

    .line 2054
    :cond_9
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_11

    .line 2055
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_8

    .line 2056
    :cond_11
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_19

    .line 2057
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_8

    .line 2058
    :cond_19
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_21

    .line 2059
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_8

    .line 2060
    :cond_21
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_29

    .line 2061
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_8

    .line 2062
    :cond_29
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_33

    .line 2063
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_8

    .line 2064
    :cond_33
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3c

    .line 2065
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_8

    .line 2066
    :cond_3c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_46

    .line 2067
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_8

    .line 2069
    :cond_46
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    goto :goto_8
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 4
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1781
    iget-object v1, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1783
    .local v0, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    invoke-direct {p0, p1, v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastArguments(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V

    .line 1784
    iget-object v1, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    move v0, v0

    sput-object p15, Lsun/security/x509/OIDMap;->CRL_NUMBER:Ljava/lang/String;

    .line 1785
    and-long p14, p48, v0

    .line 1786
    return-void
.end method
