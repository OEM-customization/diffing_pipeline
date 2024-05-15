.class public final Ljava/lang/invoke/MethodHandles$Lookup;
.super Ljava/lang/Object;
.source "MethodHandles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/MethodHandles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lookup"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o ALL_MODES:I = 0xf

.field static final blacklist IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

.field public static final whitelist test-api PACKAGE:I = 0x8

.field public static final whitelist test-api PRIVATE:I = 0x2

.field public static final whitelist test-api PROTECTED:I = 0x4

.field public static final whitelist test-api PUBLIC:I = 0x1

.field static final greylist-max-o PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;


# instance fields
.field private final greylist-max-o allowedModes:I

.field private final greylist-max-o lookupClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 506
    const-class v0, Ljava/lang/invoke/MethodHandles;

    .line 667
    new-instance v0, Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    .line 670
    new-instance v0, Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v1, Ljava/lang/Object;

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 596
    .local p1, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;I)V

    .line 598
    invoke-static {p1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->checkUnprivilegedlookupClass(Ljava/lang/Class;I)V

    .line 599
    return-void
.end method

.method private constructor greylist <init>(Ljava/lang/Class;I)V
    .registers 3
    .param p2, "allowedModes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 601
    .local p1, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    .line 603
    iput p2, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    .line 604
    return-void
.end method

.method private greylist-max-o checkReturnType(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;)V
    .registers 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "methodType"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1970
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 1973
    return-void

    .line 1971
    :cond_b
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkSpecialCaller(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1952
    .local p1, "specialCaller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_10

    .line 1953
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1954
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1955
    .local v0, "isInterfaceLookup":Z
    :goto_11
    invoke-direct {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->hasPrivateAccess()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v1

    if-eq p1, v1, :cond_1f

    if-eqz v0, :cond_20

    .line 1959
    :cond_1f
    return-void

    .line 1956
    :cond_20
    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no private access for invokespecial : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", from"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o checkUnprivilegedlookupClass(Ljava/lang/Class;I)V
    .registers 6
    .param p1, "allowedModes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 673
    .local p0, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "name":Ljava/lang/String;
    const-string v1, "java.lang.invoke."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "illegal lookupClass: "

    if-nez v1, :cond_54

    .line 681
    const/16 v1, 0xf

    if-ne p1, v1, :cond_53

    .line 682
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v1, v3, :cond_53

    .line 683
    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 684
    const-string v1, "sun."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 685
    const-string v1, "sun.invoke."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 686
    const-string v1, "sun.reflect.ReflectionFactory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_53

    .line 687
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 690
    :cond_53
    :goto_53
    return-void

    .line 675
    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o commonFieldChecks(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;ZZ)V
    .registers 9
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p4, "isStatic"    # Z
    .param p5, "performAccessChecks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1373
    .local p2, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 1374
    .local v0, "modifiers":I
    if-eqz p5, :cond_11

    .line 1375
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v0, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 1377
    :cond_11
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eq v1, p4, :cond_42

    .line 1378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    if-eqz p4, :cond_2e

    const-string v2, "not "

    goto :goto_30

    :cond_2e
    const-string v2, ""

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "static"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1380
    .local v1, "reason":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalAccessException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1382
    .end local v1    # "reason":Ljava/lang/String;
    :cond_42
    return-void
.end method

.method private static greylist-max-o createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "handleKind"    # I
    .param p2, "methodType"    # Ljava/lang/invoke/MethodType;

    .line 813
    new-instance v0, Ljava/lang/invoke/MethodHandleImpl;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    .line 814
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 815
    new-instance v1, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-direct {v1, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-object v1

    .line 817
    :cond_15
    return-object v0
.end method

.method private greylist-max-o createMethodHandleForConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p1, "constructor"    # Ljava/lang/reflect/Constructor;

    .line 997
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 998
    .local v0, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 999
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 1001
    .local v1, "constructorType":Ljava/lang/invoke/MethodType;
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x2

    if-ne v0, v2, :cond_1c

    .line 1005
    new-instance v2, Ljava/lang/invoke/MethodHandleImpl;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getArtMethod()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, v3, v1}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    .local v2, "mh":Ljava/lang/invoke/MethodHandle;
    goto :goto_30

    .line 1010
    .end local v2    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_1c
    invoke-static {v1}, Ljava/lang/invoke/MethodHandles$Lookup;->initMethodType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 1011
    .local v2, "initType":Ljava/lang/invoke/MethodType;
    new-instance v4, Ljava/lang/invoke/MethodHandleImpl;

    .line 1012
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getArtMethod()J

    move-result-wide v5

    invoke-direct {v4, v5, v6, v3, v2}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    move-object v3, v4

    .line 1013
    .local v3, "initHandle":Ljava/lang/invoke/MethodHandle;
    new-instance v4, Ljava/lang/invoke/Transformers$Construct;

    invoke-direct {v4, v3, v1}, Ljava/lang/invoke/Transformers$Construct;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    move-object v2, v4

    .line 1016
    .end local v3    # "initHandle":Ljava/lang/invoke/MethodHandle;
    .local v2, "mh":Ljava/lang/invoke/MethodHandle;
    :goto_30
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1017
    new-instance v3, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-direct {v3, v2}, Ljava/lang/invoke/Transformers$VarargsCollector;-><init>(Ljava/lang/invoke/MethodHandle;)V

    move-object v2, v3

    .line 1019
    :cond_3c
    return-object v2
.end method

.method private greylist-max-o findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .registers 12
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "kind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1207
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findFieldOfType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1208
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o findAccessor(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/invoke/MethodHandle;
    .registers 18
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p4, "kind"    # I
    .param p5, "performAccessChecks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;IZ)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1214
    .local p2, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    const/16 v0, 0xc

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v1, 0xa

    if-eq v8, v1, :cond_11

    if-ne v8, v0, :cond_f

    goto :goto_11

    :cond_f
    move v1, v9

    goto :goto_12

    :cond_11
    :goto_11
    move v1, v10

    :goto_12
    move v11, v1

    .line 1215
    .local v11, "isSetterKind":Z
    const/16 v1, 0xb

    if-eq v8, v1, :cond_1c

    if-ne v8, v0, :cond_1a

    goto :goto_1c

    :cond_1a
    move v4, v9

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v4, v10

    .line 1216
    .local v4, "isStaticKind":Z
    :goto_1d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->commonFieldChecks(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 1217
    if-eqz p5, :cond_55

    .line 1218
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 1219
    .local v0, "modifiers":I
    if-eqz v11, :cond_53

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-nez v1, :cond_36

    move-object v3, p1

    goto :goto_56

    .line 1220
    :cond_36
    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is final"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1219
    :cond_53
    move-object v3, p1

    goto :goto_56

    .line 1217
    .end local v0    # "modifiers":I
    :cond_55
    move-object v3, p1

    .line 1225
    :goto_56
    packed-switch v8, :pswitch_data_96

    .line 1239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1230
    :pswitch_70
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1231
    .local v0, "methodType":Ljava/lang/invoke/MethodType;
    goto :goto_8c

    .line 1227
    .end local v0    # "methodType":Ljava/lang/invoke/MethodType;
    :pswitch_77
    invoke-static {p3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1228
    .restart local v0    # "methodType":Ljava/lang/invoke/MethodType;
    goto :goto_8c

    .line 1236
    .end local v0    # "methodType":Ljava/lang/invoke/MethodType;
    :pswitch_7c
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v1, v10, [Ljava/lang/Class;

    aput-object v7, v1, v9

    invoke-static {v0, p2, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1237
    .restart local v0    # "methodType":Ljava/lang/invoke/MethodType;
    goto :goto_8c

    .line 1233
    .end local v0    # "methodType":Ljava/lang/invoke/MethodType;
    :pswitch_87
    invoke-static {p3, p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1234
    .restart local v0    # "methodType":Ljava/lang/invoke/MethodType;
    nop

    .line 1241
    :goto_8c
    new-instance v1, Ljava/lang/invoke/MethodHandleImpl;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getArtField()J

    move-result-wide v9

    invoke-direct {v1, v9, v10, v8, v0}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    return-object v1

    :pswitch_data_96
    .packed-switch 0x9
        :pswitch_87
        :pswitch_7c
        :pswitch_77
        :pswitch_70
    .end packed-switch
.end method

.method private greylist-max-o findFieldOfType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 7
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1347
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1350
    .local v0, "field":Ljava/lang/reflect/Field;
    move-object v1, p1

    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v1, :cond_10

    .line 1352
    :try_start_4
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_8} :catch_a

    move-object v0, v2

    .line 1353
    goto :goto_10

    .line 1354
    :catch_a
    move-exception v2

    .line 1350
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 1358
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    :goto_10
    if-nez v0, :cond_16

    .line 1360
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1363
    :cond_16
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 1364
    .local v1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p3, :cond_1d

    .line 1367
    return-object v0

    .line 1365
    :cond_1d
    new-instance v2, Ljava/lang/NoSuchFieldException;

    invoke-direct {v2, p2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o findSpecial(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/invoke/MethodType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1150
    .local p3, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "specialCaller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 1154
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_49

    .line 1162
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p3, v0, :cond_2a

    .line 1168
    new-array v0, v1, [Ljava/lang/Class;

    aput-object p3, v0, v2

    invoke-virtual {p2, v2, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1169
    .local v0, "handleType":Ljava/lang/invoke/MethodType;
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1163
    .end local v0    # "handleType":Ljava/lang/invoke/MethodType;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no private access for invokespecial : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", from"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1175
    :cond_49
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1180
    new-array v0, v1, [Ljava/lang/Class;

    aput-object p4, v0, v2

    invoke-virtual {p2, v2, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1181
    .restart local v0    # "handleType":Ljava/lang/invoke/MethodType;
    invoke-static {p1, v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1176
    .end local v0    # "handleType":Ljava/lang/invoke/MethodType;
    :cond_60
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "is not assignable from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :cond_7a
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected a non-static method:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o findVirtualForMH(Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;

    .line 794
    const-string v0, "invoke"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 795
    invoke-static {p2}, Ljava/lang/invoke/MethodHandles;->invoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 796
    :cond_d
    const-string v0, "invokeExact"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 797
    invoke-static {p2}, Ljava/lang/invoke/MethodHandles;->exactInvoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 798
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o findVirtualForVH(Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;

    .line 804
    :try_start_0
    invoke-static {p1}, Ljava/lang/invoke/VarHandle$AccessMode;->valueFromMethodName(Ljava/lang/String;)Ljava/lang/invoke/VarHandle$AccessMode;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_a

    .line 807
    .local v0, "accessMode":Ljava/lang/invoke/VarHandle$AccessMode;
    nop

    .line 808
    invoke-static {v0, p2}, Ljava/lang/invoke/MethodHandles;->varHandleInvoker(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 805
    .end local v0    # "accessMode":Ljava/lang/invoke/VarHandle$AccessMode;
    :catch_a
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o fixmods(I)I
    .registers 2
    .param p0, "mods"    # I

    .line 551
    and-int/lit8 p0, p0, 0x7

    .line 552
    if-eqz p0, :cond_6

    move v0, p0

    goto :goto_8

    :cond_6
    const/16 v0, 0x8

    :goto_8
    return v0
.end method

.method private greylist-max-o hasPrivateAccess()Z
    .registers 2

    .line 1868
    iget v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static greylist-max-o initMethodType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 6
    .param p0, "constructorType"    # Ljava/lang/invoke/MethodType;

    .line 1027
    nop

    .line 1031
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Class;

    .line 1032
    .local v0, "initPtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1033
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    .line 1034
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    .line 1033
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1037
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o throwMakeAccessException(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1964
    if-eqz p2, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1965
    :cond_2e
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method greylist-max-o accessFailedMessage(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/String;
    .registers 9
    .param p3, "mods"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1919
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "defc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    if-eq p2, p1, :cond_18

    .line 1921
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    .line 1922
    .local v0, "classOK":Z
    :goto_1b
    if-nez v0, :cond_3e

    iget v3, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3e

    .line 1923
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0xf

    invoke-static {p2, v3, v4}, Lsun/invoke/util/VerifyAccess;->isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result v3

    if-eqz v3, :cond_3c

    if-eq p2, p1, :cond_3b

    .line 1925
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p1, v3, v4}, Lsun/invoke/util/VerifyAccess;->isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_3b
    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    move v0, v1

    .line 1927
    :cond_3e
    if-nez v0, :cond_43

    .line 1928
    const-string v1, "class is not public"

    return-object v1

    .line 1929
    :cond_43
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1930
    const-string v1, "access to public member failed"

    return-object v1

    .line 1931
    :cond_4c
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1932
    const-string v1, "member is private"

    return-object v1

    .line 1933
    :cond_55
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1934
    const-string v1, "member is protected"

    return-object v1

    .line 1935
    :cond_5e
    const-string v1, "member is private to package"

    return-object v1
.end method

.method public whitelist test-api bind(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1561
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 1562
    .local v0, "handle":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 1563
    .local v1, "adapter":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 1564
    .local v2, "adapterType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1565
    nop

    .line 1566
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    .line 1565
    invoke-virtual {v1, v3}, Ljava/lang/invoke/MethodHandle;->asVarargsCollector(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 1569
    :cond_25
    return-object v1
.end method

.method greylist-max-o checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V
    .registers 8
    .param p3, "mods"    # I
    .param p4, "methName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1874
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "defc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    .line 1876
    .local v0, "allowedModes":I
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-class v1, Ljava/lang/Object;

    if-ne p2, v1, :cond_1c

    .line 1878
    const-string v1, "clone"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1879
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1893
    xor-int/lit8 p3, p3, 0x5

    .line 1896
    :cond_1c
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1898
    xor-int/lit8 p3, p3, 0x4

    .line 1901
    :cond_2a
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    if-eqz v0, :cond_3d

    .line 1902
    return-void

    .line 1903
    :cond_3d
    invoke-static {p3}, Ljava/lang/invoke/MethodHandles$Lookup;->fixmods(I)I

    move-result v1

    .line 1904
    .local v1, "requestedModes":I
    and-int v2, v1, v0

    if-eqz v2, :cond_50

    .line 1905
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, p2, p3, v2, v0}, Lsun/invoke/util/VerifyAccess;->isMemberAccessible(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Class;I)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1906
    return-void

    .line 1909
    :cond_50
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_63

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_63

    .line 1910
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2, v2}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1911
    return-void

    .line 1914
    :cond_63
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->accessFailedMessage(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p0}, Ljava/lang/invoke/MethodHandles$Lookup;->throwMakeAccessException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1915
    return-void
.end method

.method public whitelist test-api findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 981
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_47

    .line 985
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 986
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_24

    .line 990
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    .line 991
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 990
    invoke-virtual {p0, p1, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 993
    invoke-direct {p0, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandleForConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 987
    :cond_24
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " matching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 982
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_47
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no constructor for array class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api findGetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1202
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findSetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1262
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findSpecial(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/MethodType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1114
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "specialCaller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p4, :cond_52

    .line 1118
    if-eqz p3, :cond_4a

    .line 1122
    if-eqz p2, :cond_42

    .line 1126
    if-eqz p1, :cond_3a

    .line 1133
    invoke-direct {p0, p4, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->checkSpecialCaller(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1138
    const-string v0, "<"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1142
    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1143
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v0, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkReturnType(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;)V

    .line 1144
    invoke-direct {p0, v0, p3, p1, p4}, Ljava/lang/invoke/MethodHandles$Lookup;->findSpecial(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1139
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_23
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid method name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ref == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1119
    :cond_4a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1115
    :cond_52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "specialCaller == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 782
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 783
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    .line 784
    .local v1, "modifiers":I
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 787
    invoke-direct {p0, v0, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkReturnType(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;)V

    .line 788
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v1, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 789
    const/4 v2, 0x3

    invoke-static {v0, v2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2

    .line 785
    :cond_26
    new-instance v2, Ljava/lang/IllegalAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not static"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api findStaticGetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1405
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xb

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findStaticSetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1428
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xc

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findStaticVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;
    .registers 13
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1504
    .local p1, "decl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findFieldOfType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1505
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    .line 1506
    .local v7, "isStatic":Z
    const/4 v8, 0x1

    .line 1507
    .local v8, "performAccessChecks":Z
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->commonFieldChecks(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 1508
    invoke-static {v6}, Ljava/lang/invoke/FieldVarHandle;->create(Ljava/lang/reflect/Field;)Ljava/lang/invoke/FieldVarHandle;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;
    .registers 13
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1336
    .local p1, "recv":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findFieldOfType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 1337
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 1338
    .local v7, "isStatic":Z
    const/4 v8, 0x1

    .line 1339
    .local v8, "performAccessChecks":Z
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->commonFieldChecks(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 1340
    invoke-static {v6}, Ljava/lang/invoke/FieldVarHandle;->create(Ljava/lang/reflect/Field;)Ljava/lang/invoke/FieldVarHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 895
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/invoke/MethodHandle;

    if-ne p1, v0, :cond_c

    .line 896
    invoke-direct {p0, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtualForMH(Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 897
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    if-eqz v0, :cond_b

    .line 898
    return-object v0

    .line 897
    .end local v0    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_b
    goto :goto_17

    .line 900
    :cond_c
    const-class v0, Ljava/lang/invoke/VarHandle;

    if-ne p1, v0, :cond_17

    .line 902
    invoke-direct {p0, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtualForVH(Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 903
    .restart local v0    # "mh":Ljava/lang/invoke/MethodHandle;
    if-eqz v0, :cond_18

    .line 904
    return-object v0

    .line 900
    .end local v0    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_17
    :goto_17
    nop

    .line 908
    :cond_18
    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 909
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_74

    .line 916
    :try_start_22
    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 917
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 918
    new-instance v2, Ljava/lang/IllegalAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is static"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local p0    # "this":Ljava/lang/invoke/MethodHandles$Lookup;
    .end local p1    # "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "type":Ljava/lang/invoke/MethodType;
    throw v2
    :try_end_50
    .catch Ljava/lang/NoSuchMethodException; {:try_start_22 .. :try_end_50} :catch_51

    .line 921
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    .restart local p0    # "this":Ljava/lang/invoke/MethodHandles$Lookup;
    .restart local p1    # "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "type":Ljava/lang/invoke/MethodType;
    :cond_50
    goto :goto_52

    .line 920
    :catch_51
    move-exception v1

    .line 923
    :goto_52
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 925
    :cond_74
    invoke-direct {p0, v0, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkReturnType(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;)V

    .line 928
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 931
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p3, v2, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 932
    .local v1, "handleType":Ljava/lang/invoke/MethodType;
    invoke-static {v0, v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api in(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandles$Lookup;"
        }
    .end annotation

    .line 631
    .local p1, "requestedLookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 636
    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_8

    .line 637
    return-object p0

    .line 638
    :cond_8
    iget v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    and-int/lit8 v1, v1, 0xb

    .line 639
    .local v1, "newModes":I
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_18

    .line 640
    invoke-static {v0, p1}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 641
    and-int/lit8 v1, v1, -0xb

    .line 644
    :cond_18
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_26

    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    .line 645
    invoke-static {v0, p1}, Lsun/invoke/util/VerifyAccess;->isSamePackageMember(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 646
    and-int/lit8 v1, v1, -0x3

    .line 648
    :cond_26
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_35

    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    .line 649
    invoke-static {p1, v0, v2}, Lsun/invoke/util/VerifyAccess;->isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 652
    const/4 v1, 0x0

    .line 654
    :cond_35
    invoke-static {p1, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->checkUnprivilegedlookupClass(Ljava/lang/Class;I)V

    .line 655
    new-instance v0, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-direct {v0, p1, v1}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method

.method public whitelist test-api lookupClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api lookupModes()I
    .registers 2

    .line 587
    iget v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public whitelist test-api revealDirect(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;
    .registers 8
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

    .line 1854
    # invokes: Ljava/lang/invoke/MethodHandles;->getMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;
    invoke-static {p1}, Ljava/lang/invoke/MethodHandles;->access$000(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;

    move-result-object v0

    .line 1855
    .local v0, "directTarget":Ljava/lang/invoke/MethodHandleImpl;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandleImpl;->reveal()Ljava/lang/invoke/MethodHandleInfo;

    move-result-object v1

    .line 1858
    .local v1, "info":Ljava/lang/invoke/MethodHandleInfo;
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/invoke/MethodHandleInfo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/invoke/MethodHandleInfo;->getModifiers()I

    move-result v4

    .line 1859
    invoke-interface {v1}, Ljava/lang/invoke/MethodHandleInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1858
    invoke-virtual {p0, v2, v3, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1b} :catch_1d

    .line 1862
    nop

    .line 1864
    return-object v1

    .line 1860
    :catch_1d
    move-exception v2

    .line 1861
    .local v2, "exception":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to access memeber."

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 722
    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "cname":Ljava/lang/String;
    iget v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    sparse-switch v1, :sswitch_data_70

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    goto :goto_6f

    .line 733
    :sswitch_26
    return-object v0

    .line 731
    :sswitch_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/private"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 729
    :sswitch_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 727
    :sswitch_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/public"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 725
    :sswitch_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/noaccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 740
    :goto_6f
    return-object v0

    :sswitch_data_70
    .sparse-switch
        0x0 -> :sswitch_5d
        0x1 -> :sswitch_4b
        0x9 -> :sswitch_39
        0xb -> :sswitch_27
        0xf -> :sswitch_26
    .end sparse-switch
.end method

.method public whitelist test-api unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1599
    if-eqz p1, :cond_4a

    .line 1603
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 1604
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1603
    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1607
    .local v0, "methodType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1608
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 1609
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1608
    invoke-virtual {p0, v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 1612
    :cond_27
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1613
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1615
    :cond_37
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1616
    invoke-static {p1, v3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1600
    .end local v0    # "methodType":Ljava/lang/invoke/MethodType;
    :cond_4a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "m == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api unreflectConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1694
    .local p1, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz p1, :cond_20

    .line 1698
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1699
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    .line 1700
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1699
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 1703
    :cond_1b
    invoke-direct {p0, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandleForConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 1695
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "c == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1725
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 1726
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xb

    goto :goto_17

    :cond_15
    const/16 v0, 0x9

    :goto_17
    move v4, v0

    .line 1727
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 1725
    xor-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api unreflectSetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1749
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 1750
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xc

    goto :goto_17

    :cond_15
    const/16 v0, 0xa

    :goto_17
    move v4, v0

    .line 1751
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 1749
    xor-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api unreflectSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1650
    .local p2, "specialCaller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_2b

    .line 1654
    if-eqz p2, :cond_23

    .line 1658
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1661
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->checkSpecialCaller(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1664
    :cond_e
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 1665
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1664
    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1666
    .local v0, "methodType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findSpecial(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1655
    .end local v0    # "methodType":Ljava/lang/invoke/MethodType;
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "specialCaller == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1651
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "m == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o unreflectVarHandle(Ljava/lang/reflect/Field;)Ljava/lang/invoke/VarHandle;
    .registers 10
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1828
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    .line 1829
    .local v0, "isStatic":Z
    const/4 v7, 0x1

    .line 1830
    .local v7, "performAccessChecks":Z
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    invoke-direct/range {v1 .. v6}, Ljava/lang/invoke/MethodHandles$Lookup;->commonFieldChecks(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 1831
    invoke-static {p1}, Ljava/lang/invoke/FieldVarHandle;->create(Ljava/lang/reflect/Field;)Ljava/lang/invoke/FieldVarHandle;

    move-result-object v1

    return-object v1
.end method
