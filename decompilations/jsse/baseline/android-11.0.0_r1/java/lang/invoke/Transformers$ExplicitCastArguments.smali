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
.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;

    .line 1775
    invoke-direct {p0, p2}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1776
    iput-object p1, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 1777
    return-void
.end method

.method private static blacklist badCast(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1832
    .local p0, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o box(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 7
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2252
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 2253
    .local v0, "boxed":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_e

    .line 2254
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_6c

    .line 2255
    :cond_e
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1b

    .line 2256
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_6c

    .line 2257
    :cond_1b
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_28

    .line 2258
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_6c

    .line 2259
    :cond_28
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_35

    .line 2260
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_6c

    .line 2261
    :cond_35
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_42

    .line 2262
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_6c

    .line 2263
    :cond_42
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4f

    .line 2264
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_6c

    .line 2265
    :cond_4f
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5c

    .line 2266
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_6c

    .line 2267
    :cond_5c
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_69

    .line 2268
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_6c

    .line 2270
    :cond_69
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 2272
    :goto_6c
    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2273
    return-void
.end method

.method private static greylist-max-o explicitCast(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 6
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2277
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2278
    invoke-static {p0, p2, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;->copyNext(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 2279
    return-void

    .line 2282
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2283
    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2285
    invoke-static {p0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastPrimitives(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_3d

    .line 2288
    :cond_1a
    invoke-static {p0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->box(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_3d

    .line 2292
    :cond_1e
    invoke-virtual {p0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2293
    .local v0, "ref":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2295
    invoke-static {v0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unbox(Ljava/lang/Object;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_3d

    .line 2296
    :cond_2c
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2299
    invoke-virtual {p2, v0, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_3d

    .line 2302
    :cond_36
    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2305
    .end local v0    # "ref":Ljava/lang/Object;
    :goto_3d
    return-void
.end method

.method private greylist-max-o explicitCastArguments(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V
    .registers 10
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p2, "targetFrame"    # Ldalvik/system/EmulatedStackFrame;

    .line 1791
    new-instance v0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1792
    .local v0, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1793
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1794
    .local v1, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v1, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1796
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    .line 1797
    .local v2, "fromTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v3, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1798
    .local v3, "toTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    array-length v5, v2

    if-ge v4, v5, :cond_30

    .line 1799
    aget-object v5, v2, v4

    aget-object v6, v3, v4

    invoke-static {v0, v5, v1, v6}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCast(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1798
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1801
    .end local v4    # "i":I
    :cond_30
    return-void
.end method

.method private static greylist-max-o explicitCastPrimitives(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 6
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2015
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_c

    .line 2016
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsByte(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)B

    move-result v0

    .line 2017
    .local v0, "value":B
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 2018
    .end local v0    # "value":B
    goto :goto_67

    :cond_c
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_18

    .line 2019
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsChar(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)C

    move-result v0

    .line 2020
    .local v0, "value":C
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 2021
    .end local v0    # "value":C
    goto :goto_67

    :cond_18
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_24

    .line 2022
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsShort(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)S

    move-result v0

    .line 2023
    .local v0, "value":S
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    .line 2024
    .end local v0    # "value":S
    goto :goto_67

    :cond_24
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_30

    .line 2025
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsInt(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)I

    move-result v0

    .line 2026
    .local v0, "value":I
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    .line 2027
    .end local v0    # "value":I
    goto :goto_67

    :cond_30
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_3c

    .line 2028
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsLong(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)J

    move-result-wide v0

    .line 2029
    .local v0, "value":J
    invoke-virtual {p2, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    .line 2030
    .end local v0    # "value":J
    goto :goto_67

    :cond_3c
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_48

    .line 2031
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsFloat(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)F

    move-result v0

    .line 2032
    .local v0, "value":F
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 2033
    .end local v0    # "value":F
    goto :goto_67

    :cond_48
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_54

    .line 2034
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsDouble(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)D

    move-result-wide v0

    .line 2035
    .local v0, "value":D
    invoke-virtual {p2, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 2036
    .end local v0    # "value":D
    goto :goto_67

    :cond_54
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_64

    .line 2037
    invoke-static {p0, p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->readPrimitiveAsByte(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)B

    move-result v0

    .line 2038
    .local v0, "byteValue":B
    invoke-static {v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->toBoolean(B)Z

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    .line 2039
    .end local v0    # "byteValue":B
    goto :goto_67

    .line 2040
    :cond_64
    invoke-static {p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 2042
    :goto_67
    return-void
.end method

.method private greylist-max-o explicitCastReturnValue(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V
    .registers 9
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p2, "targetFrame"    # Ldalvik/system/EmulatedStackFrame;

    .line 1805
    iget-object v0, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    .line 1806
    .local v0, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v1

    .line 1807
    .local v1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_54

    .line 1808
    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1809
    .local v2, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1810
    invoke-virtual {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->makeReturnValueAccessor()V

    .line 1811
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_34

    .line 1812
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1813
    invoke-static {v2, v1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unboxNull(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_54

    .line 1815
    :cond_2f
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_54

    .line 1818
    :cond_34
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 1819
    .local v3, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v3, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1820
    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->makeReturnValueAccessor()V

    .line 1821
    iget-object v4, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCast(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 1824
    .end local v2    # "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .end local v3    # "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    :cond_54
    :goto_54
    return-void
.end method

.method private static greylist-max-o readPrimitiveAsByte(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)B
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)B"
        }
    .end annotation

    .line 1845
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    .line 1846
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    return v0

    .line 1847
    :cond_9
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_13

    .line 1848
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 1849
    :cond_13
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1d

    .line 1850
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 1851
    :cond_1d
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_27

    .line 1852
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 1853
    :cond_27
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 1854
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 1855
    :cond_32
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3d

    .line 1856
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 1857
    :cond_3d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_48

    .line 1858
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 1859
    :cond_48
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_51

    .line 1860
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    return v0

    .line 1862
    :cond_51
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 1863
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o readPrimitiveAsChar(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)C
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)C"
        }
    .end annotation

    .line 1869
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1870
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-char v0, v0

    return v0

    .line 1871
    :cond_a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_13

    .line 1872
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    return v0

    .line 1873
    :cond_13
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1d

    .line 1874
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-char v0, v0

    return v0

    .line 1875
    :cond_1d
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_27

    .line 1876
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-char v0, v0

    return v0

    .line 1877
    :cond_27
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 1878
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 1879
    :cond_32
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3d

    .line 1880
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 1881
    :cond_3d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_48

    .line 1882
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 1883
    :cond_48
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_51

    .line 1884
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    return v0

    .line 1886
    :cond_51
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 1887
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o readPrimitiveAsDouble(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)D
    .registers 5
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)D"
        }
    .end annotation

    .line 1989
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1990
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 1991
    :cond_a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 1992
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 1993
    :cond_14
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    .line 1994
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 1995
    :cond_1e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_28

    .line 1996
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 1997
    :cond_28
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 1998
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 1999
    :cond_32
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3c

    .line 2000
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 2001
    :cond_3c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_45

    .line 2002
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    return-wide v0

    .line 2003
    :cond_45
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_54

    .line 2004
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_53

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :cond_53
    return-wide v1

    .line 2006
    :cond_54
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 2007
    return-wide v1
.end method

.method private static greylist-max-o readPrimitiveAsFloat(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)F
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    .line 1965
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1966
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-float v0, v0

    return v0

    .line 1967
    :cond_a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 1968
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-float v0, v0

    return v0

    .line 1969
    :cond_14
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    .line 1970
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-float v0, v0

    return v0

    .line 1971
    :cond_1e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_28

    .line 1972
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 1973
    :cond_28
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 1974
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-float v0, v0

    return v0

    .line 1975
    :cond_32
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3b

    .line 1976
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    return v0

    .line 1977
    :cond_3b
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_45

    .line 1978
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 1979
    :cond_45
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_53

    .line 1980
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_52

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_52
    return v1

    .line 1982
    :cond_53
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 1983
    return v1
.end method

.method private static greylist-max-o readPrimitiveAsInt(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)I
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1917
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    .line 1918
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    return v0

    .line 1919
    :cond_9
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_12

    .line 1920
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    return v0

    .line 1921
    :cond_12
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1b

    .line 1922
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    return v0

    .line 1923
    :cond_1b
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_24

    .line 1924
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    return v0

    .line 1925
    :cond_24
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2e

    .line 1926
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 1927
    :cond_2e
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_38

    .line 1928
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 1929
    :cond_38
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_42

    .line 1930
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 1931
    :cond_42
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4b

    .line 1932
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    return v0

    .line 1934
    :cond_4b
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 1935
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o readPrimitiveAsLong(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)J
    .registers 5
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)J"
        }
    .end annotation

    .line 1941
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1942
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1943
    :cond_a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 1944
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1945
    :cond_14
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1e

    .line 1946
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1947
    :cond_1e
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_28

    .line 1948
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1949
    :cond_28
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_31

    .line 1950
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    return-wide v0

    .line 1951
    :cond_31
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3b

    .line 1952
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-long v0, v0

    return-wide v0

    .line 1953
    :cond_3b
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_45

    .line 1954
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 1955
    :cond_45
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_54

    .line 1956
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_53

    const-wide/16 v1, 0x1

    :cond_53
    return-wide v1

    .line 1958
    :cond_54
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 1959
    return-wide v1
.end method

.method private static greylist-max-o readPrimitiveAsShort(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ljava/lang/Class;)S
    .registers 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ljava/lang/Class<",
            "*>;)S"
        }
    .end annotation

    .line 1893
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a

    .line 1894
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    int-to-short v0, v0

    return v0

    .line 1895
    :cond_a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_14

    .line 1896
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    int-to-short v0, v0

    return v0

    .line 1897
    :cond_14
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1d

    .line 1898
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    return v0

    .line 1899
    :cond_1d
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_27

    .line 1900
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    int-to-short v0, v0

    return v0

    .line 1901
    :cond_27
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 1902
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 1903
    :cond_32
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3d

    .line 1904
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 1905
    :cond_3d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_48

    .line 1906
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 1907
    :cond_48
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_51

    .line 1908
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    return v0

    .line 1910
    :cond_51
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 1911
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o throwUnexpectedType(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1827
    .local p0, "unexpectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o toBoolean(B)Z
    .registers 3
    .param p0, "value"    # B

    .line 1840
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private static greylist-max-o unbox(Ljava/lang/Object;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 4
    .param p0, "ref"    # Ljava/lang/Object;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2243
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_6

    .line 2244
    invoke-static {p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unboxNull(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    goto :goto_9

    .line 2246
    :cond_6
    invoke-static {p0, p1, p2, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->unboxNonNull(Ljava/lang/Object;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 2248
    :goto_9
    return-void
.end method

.method private static greylist-max-o unboxNonNull(Ljava/lang/Object;Ljava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 13
    .param p0, "ref"    # Ljava/lang/Object;
    .param p2, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2068
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Boolean;

    const-wide/16 v1, 0x1

    if-ne p1, v0, :cond_64

    .line 2069
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2070
    .local v0, "z":Z
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v3, :cond_15

    .line 2071
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_62

    .line 2072
    :cond_15
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v3, :cond_1d

    .line 2073
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_62

    .line 2074
    :cond_1d
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v3, :cond_25

    .line 2075
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_62

    .line 2076
    :cond_25
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v3, :cond_2d

    .line 2077
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_62

    .line 2078
    :cond_2d
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v3, :cond_35

    .line 2079
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_62

    .line 2080
    :cond_35
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v3, :cond_42

    .line 2081
    if-eqz v0, :cond_3c

    goto :goto_3e

    :cond_3c
    const-wide/16 v1, 0x0

    :goto_3e
    invoke-virtual {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_62

    .line 2082
    :cond_42
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_50

    .line 2083
    if-eqz v0, :cond_4b

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_62

    .line 2084
    :cond_50
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_5f

    .line 2085
    if-eqz v0, :cond_59

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_5b

    :cond_59
    const-wide/16 v1, 0x0

    :goto_5b
    invoke-virtual {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_62

    .line 2087
    :cond_5f
    invoke-static {p1, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2089
    .end local v0    # "z":Z
    :goto_62
    goto/16 :goto_2ee

    :cond_64
    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_bd

    .line 2090
    move-object v0, p0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 2091
    .local v0, "b":B
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_77

    .line 2092
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_bb

    .line 2093
    :cond_77
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_83

    .line 2094
    invoke-static {v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->toBoolean(B)Z

    move-result v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_bb

    .line 2095
    :cond_83
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_8c

    .line 2096
    int-to-short v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_bb

    .line 2097
    :cond_8c
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_95

    .line 2098
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_bb

    .line 2099
    :cond_95
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_9d

    .line 2100
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_bb

    .line 2101
    :cond_9d
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_a6

    .line 2102
    int-to-long v1, v0

    invoke-virtual {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_bb

    .line 2103
    :cond_a6
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_af

    .line 2104
    int-to-float v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_bb

    .line 2105
    :cond_af
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_b8

    .line 2106
    int-to-double v1, v0

    invoke-virtual {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_bb

    .line 2108
    :cond_b8
    invoke-static {p1, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2110
    .end local v0    # "b":B
    :goto_bb
    goto/16 :goto_2ee

    :cond_bd
    const-class v0, Ljava/lang/Short;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v0, :cond_119

    .line 2111
    move-object v0, p0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 2112
    .local v0, "s":S
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_d7

    .line 2113
    and-int/lit8 v1, v0, 0x1

    if-ne v1, v4, :cond_d3

    move v3, v4

    :cond_d3
    invoke-virtual {p2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_117

    .line 2114
    :cond_d7
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_e0

    .line 2115
    int-to-byte v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_117

    .line 2116
    :cond_e0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_e8

    .line 2117
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_117

    .line 2118
    :cond_e8
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_f1

    .line 2119
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_117

    .line 2120
    :cond_f1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_f9

    .line 2121
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_117

    .line 2122
    :cond_f9
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_102

    .line 2123
    int-to-long v1, v0

    invoke-virtual {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_117

    .line 2124
    :cond_102
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_10b

    .line 2125
    int-to-float v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_117

    .line 2126
    :cond_10b
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_114

    .line 2127
    int-to-double v1, v0

    invoke-virtual {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_117

    .line 2129
    :cond_114
    invoke-static {p1, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2131
    .end local v0    # "s":S
    :goto_117
    goto/16 :goto_2ee

    :cond_119
    const-class v0, Ljava/lang/Character;

    if-ne p1, v0, :cond_173

    .line 2132
    move-object v0, p0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 2133
    .local v0, "c":C
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_131

    .line 2134
    and-int/lit8 v1, v0, 0x1

    if-ne v1, v4, :cond_12d

    move v3, v4

    :cond_12d
    invoke-virtual {p2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_171

    .line 2135
    :cond_131
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_13a

    .line 2136
    int-to-byte v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_171

    .line 2137
    :cond_13a
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_143

    .line 2138
    int-to-short v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_171

    .line 2139
    :cond_143
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_14b

    .line 2140
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_171

    .line 2141
    :cond_14b
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_153

    .line 2142
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_171

    .line 2143
    :cond_153
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_15c

    .line 2144
    int-to-long v1, v0

    invoke-virtual {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_171

    .line 2145
    :cond_15c
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_165

    .line 2146
    int-to-float v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_171

    .line 2147
    :cond_165
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_16e

    .line 2148
    int-to-double v1, v0

    invoke-virtual {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_171

    .line 2150
    :cond_16e
    invoke-static {p1, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2152
    .end local v0    # "c":C
    :goto_171
    goto/16 :goto_2ee

    :cond_173
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_1ce

    .line 2153
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2154
    .local v0, "i":I
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_18b

    .line 2155
    and-int/lit8 v1, v0, 0x1

    if-ne v1, v4, :cond_187

    move v3, v4

    :cond_187
    invoke-virtual {p2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_1cc

    .line 2156
    :cond_18b
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_194

    .line 2157
    int-to-byte v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_1cc

    .line 2158
    :cond_194
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_19d

    .line 2159
    int-to-short v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_1cc

    .line 2160
    :cond_19d
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_1a6

    .line 2161
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_1cc

    .line 2162
    :cond_1a6
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_1ae

    .line 2163
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1cc

    .line 2164
    :cond_1ae
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_1b7

    .line 2165
    int-to-long v1, v0

    invoke-virtual {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1cc

    .line 2166
    :cond_1b7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_1c0

    .line 2167
    int-to-float v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1cc

    .line 2168
    :cond_1c0
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_1c9

    .line 2169
    int-to-double v1, v0

    invoke-virtual {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1cc

    .line 2171
    :cond_1c9
    invoke-static {p1, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2173
    .end local v0    # "i":I
    :goto_1cc
    goto/16 :goto_2ee

    :cond_1ce
    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_22e

    .line 2174
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2175
    .local v5, "j":J
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_1e8

    .line 2176
    and-long v7, v5, v1

    cmp-long v0, v7, v1

    if-nez v0, :cond_1e4

    move v3, v4

    :cond_1e4
    invoke-virtual {p2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_22c

    .line 2177
    :cond_1e8
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_1f2

    .line 2178
    long-to-int v0, v5

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_22c

    .line 2179
    :cond_1f2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_1fc

    .line 2180
    long-to-int v0, v5

    int-to-short v0, v0

    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_22c

    .line 2181
    :cond_1fc
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_206

    .line 2182
    long-to-int v0, v5

    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_22c

    .line 2183
    :cond_206
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_20f

    .line 2184
    long-to-int v0, v5

    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_22c

    .line 2185
    :cond_20f
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_217

    .line 2186
    invoke-virtual {p2, v5, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_22c

    .line 2187
    :cond_217
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_220

    .line 2188
    long-to-float v0, v5

    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_22c

    .line 2189
    :cond_220
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_229

    .line 2190
    long-to-double v0, v5

    invoke-virtual {p2, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_22c

    .line 2192
    :cond_229
    invoke-static {p1, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2194
    .end local v5    # "j":J
    :goto_22c
    goto/16 :goto_2ee

    :cond_22e
    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_28d

    .line 2195
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2196
    .local v0, "f":F
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_247

    .line 2197
    float-to-int v1, v0

    int-to-byte v1, v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_243

    move v3, v4

    :cond_243
    invoke-virtual {p2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_28b

    .line 2198
    :cond_247
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_251

    .line 2199
    float-to-int v1, v0

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_28b

    .line 2200
    :cond_251
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_25b

    .line 2201
    float-to-int v1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_28b

    .line 2202
    :cond_25b
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_265

    .line 2203
    float-to-int v1, v0

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_28b

    .line 2204
    :cond_265
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_26e

    .line 2205
    float-to-int v1, v0

    invoke-virtual {p2, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_28b

    .line 2206
    :cond_26e
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_277

    .line 2207
    float-to-long v1, v0

    invoke-virtual {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_28b

    .line 2208
    :cond_277
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_27f

    .line 2209
    invoke-virtual {p2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_28b

    .line 2210
    :cond_27f
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v1, :cond_288

    .line 2211
    float-to-double v1, v0

    invoke-virtual {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_28b

    .line 2213
    :cond_288
    invoke-static {p1, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2215
    .end local v0    # "f":F
    :goto_28b
    goto/16 :goto_2ee

    :cond_28d
    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_2eb

    .line 2216
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 2217
    .local v0, "d":D
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v2, :cond_2a6

    .line 2218
    double-to-int v2, v0

    int-to-byte v2, v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_2a2

    move v3, v4

    :cond_2a2
    invoke-virtual {p2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_2ea

    .line 2219
    :cond_2a6
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v2, :cond_2b0

    .line 2220
    double-to-int v2, v0

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_2ea

    .line 2221
    :cond_2b0
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v2, :cond_2ba

    .line 2222
    double-to-int v2, v0

    int-to-short v2, v2

    invoke-virtual {p2, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_2ea

    .line 2223
    :cond_2ba
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p3, v2, :cond_2c4

    .line 2224
    double-to-int v2, v0

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_2ea

    .line 2225
    :cond_2c4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v2, :cond_2cd

    .line 2226
    double-to-int v2, v0

    invoke-virtual {p2, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_2ea

    .line 2227
    :cond_2cd
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p3, v2, :cond_2d6

    .line 2228
    double-to-long v2, v0

    invoke-virtual {p2, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_2ea

    .line 2229
    :cond_2d6
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p3, v2, :cond_2df

    .line 2230
    double-to-float v2, v0

    invoke-virtual {p2, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_2ea

    .line 2231
    :cond_2df
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, v2, :cond_2e7

    .line 2232
    invoke-virtual {p2, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_2ea

    .line 2234
    :cond_2e7
    invoke-static {p1, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2236
    .end local v0    # "d":D
    :goto_2ea
    goto :goto_2ee

    .line 2237
    :cond_2eb
    invoke-static {p1, p3}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->badCast(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2239
    :goto_2ee
    return-void
.end method

.method private static greylist-max-o unboxNull(Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 4
    .param p0, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2045
    .local p1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    .line 2046
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_49

    .line 2047
    :cond_9
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_11

    .line 2048
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_49

    .line 2049
    :cond_11
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_19

    .line 2050
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_49

    .line 2051
    :cond_19
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_21

    .line 2052
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_49

    .line 2053
    :cond_21
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_29

    .line 2054
    invoke-virtual {p0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_49

    .line 2055
    :cond_29
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_33

    .line 2056
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_49

    .line 2057
    :cond_33
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3c

    .line 2058
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_49

    .line 2059
    :cond_3c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_46

    .line 2060
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_49

    .line 2062
    :cond_46
    invoke-static {p1}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->throwUnexpectedType(Ljava/lang/Class;)V

    .line 2064
    :goto_49
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 4
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1782
    iget-object v0, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1784
    .local v0, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    invoke-direct {p0, p1, v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastArguments(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V

    .line 1785
    iget-object v1, p0, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v1, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 1786
    invoke-direct {p0, p1, v0}, Ljava/lang/invoke/Transformers$ExplicitCastArguments;->explicitCastReturnValue(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V

    .line 1787
    return-void
.end method
