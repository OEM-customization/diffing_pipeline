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
.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final fields:[Ljava/io/ObjectStreamField;

.field private final numPrimFields:I

.field private final offsets:[I

.field private final readKeys:[J

.field private final typeCodes:[C

.field private final types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final writeKeys:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1859
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    .line 1856
    return-void
.end method

.method constructor <init>([Ljava/io/ObjectStreamField;)V
    .registers 13
    .param p1, "fields"    # [Ljava/io/ObjectStreamField;

    .prologue
    const/4 v9, 0x0

    .line 1883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1884
    iput-object p1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    .line 1885
    array-length v4, p1

    .line 1886
    .local v4, "nfields":I
    new-array v8, v4, [J

    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    .line 1887
    new-array v8, v4, [J

    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    .line 1888
    new-array v8, v4, [I

    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    .line 1889
    new-array v8, v4, [C

    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    .line 1890
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1891
    .local v6, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1894
    .local v7, "usedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    if-ge v1, v4, :cond_6e

    .line 1895
    aget-object v0, p1, v1

    .line 1896
    .local v0, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1897
    .local v5, "rf":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_66

    .line 1898
    sget-object v8, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    .line 1899
    .local v2, "key":J
    :goto_32
    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    aput-wide v2, v8, v1

    .line 1900
    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_69

    .end local v2    # "key":J
    :goto_42
    aput-wide v2, v8, v1

    .line 1902
    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v10

    aput v10, v8, v1

    .line 1903
    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v10

    aput-char v10, v8, v1

    .line 1904
    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_63

    .line 1905
    if-eqz v5, :cond_6c

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    :goto_60
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1894
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1898
    :cond_66
    const-wide/16 v2, -0x1

    .restart local v2    # "key":J
    goto :goto_32

    .line 1901
    :cond_69
    const-wide/16 v2, -0x1

    goto :goto_42

    .end local v2    # "key":J
    :cond_6c
    move-object v8, v9

    .line 1905
    goto :goto_60

    .line 1909
    .end local v0    # "f":Ljava/io/ObjectStreamField;
    .end local v5    # "rf":Ljava/lang/reflect/Field;
    :cond_6e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Class;

    iput-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    .line 1910
    iget-object v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    array-length v8, v8

    sub-int v8, v4, v8

    iput v8, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    .line 1911
    return-void
.end method


# virtual methods
.method getFields()[Ljava/io/ObjectStreamField;
    .registers 2

    .prologue
    .line 1920
    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    return-object v0
.end method

.method getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .prologue
    .line 2038
    if-nez p1, :cond_8

    .line 2039
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2045
    :cond_8
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 2046
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v1, v1, v0

    sparse-switch v1, :sswitch_data_30

    .line 2053
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 2049
    :sswitch_1c
    iget-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v1, v1, v0

    sget-object v2, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    aget-wide v4, v3, v0

    invoke-virtual {v2, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    .line 2045
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2056
    :cond_2f
    return-void

    .line 2046
    :sswitch_data_30
    .sparse-switch
        0x4c -> :sswitch_1c
        0x5b -> :sswitch_1c
    .end sparse-switch
.end method

.method getPrimFieldValues(Ljava/lang/Object;[B)V
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    .prologue
    .line 1929
    if-nez p1, :cond_8

    .line 1930
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1936
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    if-ge v0, v4, :cond_73

    .line 1937
    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->readKeys:[J

    aget-wide v2, v4, v0

    .line 1938
    .local v2, "key":J
    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v1, v4, v0

    .line 1939
    .local v1, "off":I
    iget-object v4, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v4, v4, v0

    sparse-switch v4, :sswitch_data_74

    .line 1973
    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    throw v4

    .line 1941
    :sswitch_22
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putBoolean([BIZ)V

    .line 1936
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1945
    :sswitch_2e
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v4

    aput-byte v4, p2, v1

    goto :goto_2b

    .line 1949
    :sswitch_37
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v4

    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putChar([BIC)V

    goto :goto_2b

    .line 1953
    :sswitch_41
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v4

    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putShort([BIS)V

    goto :goto_2b

    .line 1957
    :sswitch_4b
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putInt([BII)V

    goto :goto_2b

    .line 1961
    :sswitch_55
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {p2, v1, v4}, Ljava/io/Bits;->putFloat([BIF)V

    goto :goto_2b

    .line 1965
    :sswitch_5f
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v1, v4, v5}, Ljava/io/Bits;->putLong([BIJ)V

    goto :goto_2b

    .line 1969
    :sswitch_69
    sget-object v4, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p2, v1, v4, v5}, Ljava/io/Bits;->putDouble([BID)V

    goto :goto_2b

    .line 1976
    .end local v1    # "off":I
    .end local v2    # "key":J
    :cond_73
    return-void

    .line 1939
    :sswitch_data_74
    .sparse-switch
        0x42 -> :sswitch_2e
        0x43 -> :sswitch_37
        0x44 -> :sswitch_69
        0x46 -> :sswitch_55
        0x49 -> :sswitch_4b
        0x4a -> :sswitch_5f
        0x53 -> :sswitch_41
        0x5a -> :sswitch_22
    .end sparse-switch
.end method

.method setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .prologue
    .line 2066
    if-nez p1, :cond_8

    .line 2067
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 2069
    :cond_8
    iget v1, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    .local v1, "i":I
    :goto_a
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    array-length v5, v5

    if-ge v1, v5, :cond_ba

    .line 2070
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    aget-wide v2, v5, v1

    .line 2071
    .local v2, "key":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_1c

    .line 2069
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2074
    :cond_1c
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v5, v5, v1

    sparse-switch v5, :sswitch_data_bc

    .line 2094
    new-instance v5, Ljava/lang/InternalError;

    invoke-direct {v5}, Ljava/lang/InternalError;-><init>()V

    throw v5

    .line 2077
    :sswitch_29
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v5, v5, v1

    aget-object v4, p2, v5

    .line 2078
    .local v4, "val":Ljava/lang/Object;
    if-eqz v4, :cond_b3

    .line 2079
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->types:[Ljava/lang/Class;

    iget v6, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    sub-int v6, v1, v6

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 2078
    if-eqz v5, :cond_b3

    .line 2081
    iget-object v5, p0, Ljava/io/ObjectStreamClass$FieldReflector;->fields:[Ljava/io/ObjectStreamField;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2082
    .local v0, "f":Ljava/lang/reflect/Field;
    new-instance v5, Ljava/lang/ClassCastException;

    .line 2083
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot assign instance of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2084
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2084
    const-string/jumbo v7, " to field "

    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2085
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2085
    const-string/jumbo v7, "."

    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2086
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2086
    const-string/jumbo v7, " of type "

    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2087
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2087
    const-string/jumbo v7, " in instance of "

    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2088
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2082
    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2090
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :cond_b3
    sget-object v5, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_19

    .line 2097
    .end local v2    # "key":J
    .end local v4    # "val":Ljava/lang/Object;
    :cond_ba
    return-void

    .line 2074
    nop

    :sswitch_data_bc
    .sparse-switch
        0x4c -> :sswitch_29
        0x5b -> :sswitch_29
    .end sparse-switch
.end method

.method setPrimFieldValues(Ljava/lang/Object;[B)V
    .registers 11
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    .prologue
    .line 1984
    if-nez p1, :cond_8

    .line 1985
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1987
    :cond_8
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->numPrimFields:I

    if-ge v6, v0, :cond_7b

    .line 1988
    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->writeKeys:[J

    aget-wide v2, v0, v6

    .line 1989
    .local v2, "key":J
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_1a

    .line 1987
    :goto_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1992
    :cond_1a
    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->offsets:[I

    aget v7, v0, v6

    .line 1993
    .local v7, "off":I
    iget-object v0, p0, Ljava/io/ObjectStreamClass$FieldReflector;->typeCodes:[C

    aget-char v0, v0, v6

    sparse-switch v0, :sswitch_data_7c

    .line 2027
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 1995
    :sswitch_2b
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getBoolean([BI)Z

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    goto :goto_17

    .line 1999
    :sswitch_35
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    aget-byte v1, p2, v7

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    goto :goto_17

    .line 2003
    :sswitch_3d
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getChar([BI)C

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    goto :goto_17

    .line 2007
    :sswitch_47
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getShort([BI)S

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    goto :goto_17

    .line 2011
    :sswitch_51
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getInt([BI)I

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_17

    .line 2015
    :sswitch_5b
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getFloat([BI)F

    move-result v1

    invoke-virtual {v0, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    goto :goto_17

    .line 2019
    :sswitch_65
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_17

    .line 2023
    :sswitch_70
    sget-object v0, Ljava/io/ObjectStreamClass$FieldReflector;->unsafe:Lsun/misc/Unsafe;

    invoke-static {p2, v7}, Ljava/io/Bits;->getDouble([BI)D

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    goto :goto_17

    .line 2030
    .end local v2    # "key":J
    .end local v7    # "off":I
    :cond_7b
    return-void

    .line 1993
    :sswitch_data_7c
    .sparse-switch
        0x42 -> :sswitch_35
        0x43 -> :sswitch_3d
        0x44 -> :sswitch_70
        0x46 -> :sswitch_5b
        0x49 -> :sswitch_51
        0x4a -> :sswitch_65
        0x53 -> :sswitch_47
        0x5a -> :sswitch_2b
    .end sparse-switch
.end method
