.class Ljava/io/ObjectStreamClass$FieldReflector;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldReflector"
.end annotation


# static fields
.field private static final greylist-max-o unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final greylist-max-o fields:[Ljava/io/ObjectStreamField;

.field private final greylist-max-o numPrimFields:I

.field private final greylist-max-o offsets:[I

.field private final greylist-max-o readKeys:[J

.field private final greylist-max-o typeCodes:[C

.field private final greylist-max-o types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o writeKeys:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1986
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method constructor greylist-max-o <init>([Ljava/io/ObjectStreamField;)V
    .registers 14
    .param p1, "fields"    # [Ljava/io/ObjectStreamField;

    .line 2010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2011
    iput-object p1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    .line 2012
    array-length v0, p1

    .line 2013
    .local v0, "nfields":I
    new-array v1, v0, [J

    iput-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    .line 2014
    new-array v1, v0, [J

    iput-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    .line 2015
    new-array v1, v0, [I

    iput-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    .line 2016
    new-array v1, v0, [C

    iput-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    .line 2017
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2018
    .local v1, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2021
    .local v2, "usedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v0, :cond_6e

    .line 2022
    aget-object v4, p1, v3

    .line 2023
    .local v4, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    .line 2024
    .local v5, "rf":Ljava/lang/reflect/Field;
    const-wide/16 v6, -0x1

    if-eqz v5, :cond_34

    .line 2025
    sget-object v8, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    goto :goto_35

    :cond_34
    move-wide v8, v6

    .line 2026
    .local v8, "key":J
    :goto_35
    iget-object v10, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    aput-wide v8, v10, v3

    .line 2027
    iget-object v10, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 2028
    move-wide v6, v8

    goto :goto_48

    :cond_47
    nop

    :goto_48
    aput-wide v6, v10, v3

    .line 2029
    iget-object v6, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v7

    aput v7, v6, v3

    .line 2030
    iget-object v6, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v7

    aput-char v7, v6, v3

    .line 2031
    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_6b

    .line 2032
    if-eqz v5, :cond_67

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    goto :goto_68

    :cond_67
    const/4 v6, 0x0

    :goto_68
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2021
    .end local v4    # "f":Ljava/io/ObjectStreamField;
    .end local v5    # "rf":Ljava/lang/reflect/Field;
    .end local v8    # "key":J
    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 2036
    .end local v3    # "i":I
    :cond_6e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    iput-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    .line 2037
    array-length v3, v3

    sub-int v3, v0, v3

    iput v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    .line 2038
    return-void
.end method


# virtual methods
.method greylist-max-o getFields()[Ljava/io/ObjectStreamField;
    .registers 2

    .line 2047
    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    return-object v0
.end method

.method greylist-max-o getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .line 2165
    if-eqz p1, :cond_31

    .line 2172
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    array-length v1, v1

    if-ge v0, v1, :cond_30

    .line 2173
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v1, v1, v0

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_16

    goto :goto_1c

    .line 2180
    :cond_16
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 2176
    :cond_1c
    :goto_1c
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v1, v1, v0

    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    .line 2177
    nop

    .line 2172
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2183
    .end local v0    # "i":I
    :cond_30
    return-void

    .line 2166
    :cond_31
    const/4 v0, 0x0

    throw v0
.end method

.method greylist-max-o getPrimFieldValues(Ljava/lang/Object;[B)V
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    .line 2056
    if-eqz p1, :cond_83

    .line 2063
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    if-ge v0, v1, :cond_82

    .line 2064
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    aget-wide v1, v1, v0

    .line 2065
    .local v1, "key":J
    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v3, v3, v0

    .line 2066
    .local v3, "off":I
    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v4, v4, v0

    const/16 v5, 0x46

    if-eq v4, v5, :cond_75

    const/16 v5, 0x53

    if-eq v4, v5, :cond_6b

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_61

    const/16 v5, 0x49

    if-eq v4, v5, :cond_57

    const/16 v5, 0x4a

    if-eq v4, v5, :cond_4d

    packed-switch v4, :pswitch_data_86

    .line 2100
    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    throw v4

    .line 2096
    :pswitch_30
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p2, v3, v4, v5}, Ljava/io/Bits;->putDouble([BID)V

    .line 2097
    goto :goto_7f

    .line 2076
    :pswitch_3a
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v4

    invoke-static {p2, v3, v4}, Ljava/io/Bits;->putChar([BIC)V

    .line 2077
    goto :goto_7f

    .line 2072
    :pswitch_44
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v4

    aput-byte v4, p2, v3

    .line 2073
    goto :goto_7f

    .line 2092
    :cond_4d
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v3, v4, v5}, Ljava/io/Bits;->putLong([BIJ)V

    .line 2093
    goto :goto_7f

    .line 2084
    :cond_57
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v3, v4}, Ljava/io/Bits;->putInt([BII)V

    .line 2085
    goto :goto_7f

    .line 2068
    :cond_61
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v3, v4}, Ljava/io/Bits;->putBoolean([BIZ)V

    .line 2069
    goto :goto_7f

    .line 2080
    :cond_6b
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v4

    invoke-static {p2, v3, v4}, Ljava/io/Bits;->putShort([BIS)V

    .line 2081
    goto :goto_7f

    .line 2088
    :cond_75
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {p2, v3, v4}, Ljava/io/Bits;->putFloat([BIF)V

    .line 2089
    nop

    .line 2063
    .end local v1    # "key":J
    .end local v3    # "off":I
    :goto_7f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2103
    .end local v0    # "i":I
    :cond_82
    return-void

    .line 2057
    :cond_83
    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_86
    .packed-switch 0x42
        :pswitch_44
        :pswitch_3a
        :pswitch_30
    .end packed-switch
.end method

.method greylist-max-o setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .line 2193
    if-eqz p1, :cond_ad

    .line 2196
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    array-length v1, v1

    if-ge v0, v1, :cond_ac

    .line 2197
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    aget-wide v1, v1, v0

    .line 2198
    .local v1, "key":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_15

    .line 2199
    goto/16 :goto_a8

    .line 2201
    :cond_15
    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v3, v3, v0

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_28

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_22

    goto :goto_28

    .line 2221
    :cond_22
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 2204
    :cond_28
    :goto_28
    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v3, v3, v0

    aget-object v3, p2, v3

    .line 2205
    .local v3, "val":Ljava/lang/Object;
    if-eqz v3, :cond_a2

    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    iget v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    sub-int v5, v0, v5

    aget-object v4, v4, v5

    .line 2206
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_a2

    .line 2208
    :cond_3f
    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2209
    .local v4, "f":Ljava/lang/reflect/Field;
    new-instance v5, Ljava/lang/ClassCastException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot assign instance of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2211
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2212
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2214
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in instance of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2217
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :cond_a2
    :goto_a2
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2218
    nop

    .line 2196
    .end local v1    # "key":J
    .end local v3    # "val":Ljava/lang/Object;
    :goto_a8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 2224
    .end local v0    # "i":I
    :cond_ac
    return-void

    .line 2194
    :cond_ad
    const/4 v0, 0x0

    throw v0
.end method

.method greylist-max-o setPrimFieldValues(Ljava/lang/Object;[B)V
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    .line 2111
    if-eqz p1, :cond_8f

    .line 2114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    if-ge v0, v1, :cond_8e

    .line 2115
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    aget-wide v8, v1, v0

    .line 2116
    .local v8, "key":J
    const-wide/16 v1, -0x1

    cmp-long v1, v8, v1

    if-nez v1, :cond_13

    .line 2117
    goto/16 :goto_8a

    .line 2119
    :cond_13
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v1, v1, v0

    .line 2120
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v2, v2, v0

    const/16 v3, 0x46

    if-eq v2, v3, :cond_80

    const/16 v3, 0x53

    if-eq v2, v3, :cond_76

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_6c

    const/16 v3, 0x49

    if-eq v2, v3, :cond_62

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_56

    packed-switch v2, :pswitch_data_92

    .line 2154
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    .line 2150
    :pswitch_38
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getDouble([BI)D

    move-result-wide v6

    move-object v3, p1

    move-wide v4, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 2151
    goto :goto_8a

    .line 2130
    :pswitch_44
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getChar([BI)C

    move-result v3

    invoke-virtual {v2, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 2131
    goto :goto_8a

    .line 2126
    :pswitch_4e
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    aget-byte v3, p2, v1

    invoke-virtual {v2, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 2127
    goto :goto_8a

    .line 2146
    :cond_56
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v6

    move-object v3, p1

    move-wide v4, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 2147
    goto :goto_8a

    .line 2138
    :cond_62
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getInt([BI)I

    move-result v3

    invoke-virtual {v2, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 2139
    goto :goto_8a

    .line 2122
    :cond_6c
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getBoolean([BI)Z

    move-result v3

    invoke-virtual {v2, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 2123
    goto :goto_8a

    .line 2134
    :cond_76
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getShort([BI)S

    move-result v3

    invoke-virtual {v2, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 2135
    goto :goto_8a

    .line 2142
    :cond_80
    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v1}, Ljava/io/Bits;->getFloat([BI)F

    move-result v3

    invoke-virtual {v2, p1, v8, v9, v3}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 2143
    nop

    .line 2114
    .end local v1    # "off":I
    .end local v8    # "key":J
    :goto_8a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 2157
    .end local v0    # "i":I
    :cond_8e
    return-void

    .line 2112
    :cond_8f
    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_92
    .packed-switch 0x42
        :pswitch_4e
        :pswitch_44
        :pswitch_38
    .end packed-switch
.end method
