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
.field static final synthetic -assertionsDisabled:Z

.field private static final ALL_MODES:I = 0xf

.field static final IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

.field public static final PACKAGE:I = 0x8

.field public static final PRIVATE:I = 0x2

.field public static final PROTECTED:I = 0x4

.field public static final PUBLIC:I = 0x1

.field static final PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;


# instance fields
.field private final allowedModes:I

.field private final lookupClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-class v0, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/invoke/MethodHandles$Lookup;->-assertionsDisabled:Z

    .line 666
    new-instance v0, Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    .line 669
    new-instance v0, Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v1, Ljava/lang/Object;

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    .line 506
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xf

    .line 595
    invoke-direct {p0, p1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;I)V

    .line 597
    invoke-static {p1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->checkUnprivilegedlookupClass(Ljava/lang/Class;I)V

    .line 598
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;I)V
    .registers 3
    .param p2, "allowedModes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p1, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    .line 602
    iput p2, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    .line 603
    return-void
.end method

.method private checkReturnType(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;)V
    .registers 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "methodType"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 1675
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 1676
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1678
    :cond_25
    return-void
.end method

.method private checkSpecialCaller(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1660
    .local p1, "specialCaller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->hasPrivateAccess()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v0

    if-eq p1, v0, :cond_31

    .line 1661
    :cond_c
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no private access for invokespecial : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1662
    const-string/jumbo v2, ", from"

    .line 1661
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1664
    :cond_31
    return-void
.end method

.method private static checkUnprivilegedlookupClass(Ljava/lang/Class;I)V
    .registers 5
    .param p1, "allowedModes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "java.lang.invoke."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal lookupClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 680
    :cond_26
    const/16 v1, 0xf

    if-ne p1, v1, :cond_77

    .line 681
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v1, v2, :cond_77

    .line 682
    const-string/jumbo v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 683
    const-string/jumbo v1, "sun."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 684
    const-string/jumbo v1, "sun.invoke."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 683
    if-eqz v1, :cond_77

    .line 685
    const-string/jumbo v1, "sun.reflect.ReflectionFactory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 682
    if-eqz v1, :cond_77

    .line 686
    :cond_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal lookupClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 689
    :cond_77
    return-void
.end method

.method private static createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "handleKind"    # I
    .param p2, "methodType"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 802
    new-instance v0, Ljava/lang/invoke/MethodHandleImpl;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1, p2}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    .line 803
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 804
    new-instance v1, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-direct {v1, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-object v1

    .line 806
    :cond_15
    return-object v0
.end method

.method private createMethodHandleForConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;
    .registers 11
    .param p1, "constructor"    # Ljava/lang/reflect/Constructor;

    .prologue
    const/4 v8, 0x2

    .line 980
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    .line 982
    .local v5, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 984
    .local v0, "constructorType":Ljava/lang/invoke/MethodType;
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_27

    .line 988
    new-instance v3, Ljava/lang/invoke/MethodHandleImpl;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getArtMethod()J

    move-result-wide v6

    invoke-direct {v3, v6, v7, v8, v0}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    .line 999
    .local v3, "mh":Ljava/lang/invoke/MethodHandle;
    :goto_1a
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1000
    new-instance v4, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-direct {v4, v3}, Ljava/lang/invoke/Transformers$VarargsCollector;-><init>(Ljava/lang/invoke/MethodHandle;)V

    .end local v3    # "mh":Ljava/lang/invoke/MethodHandle;
    .local v4, "mh":Ljava/lang/invoke/MethodHandle;
    move-object v3, v4

    .line 1002
    .end local v4    # "mh":Ljava/lang/invoke/MethodHandle;
    .restart local v3    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_26
    return-object v3

    .line 993
    .end local v3    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_27
    invoke-static {v0}, Ljava/lang/invoke/MethodHandles$Lookup;->initMethodType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 994
    .local v2, "initType":Ljava/lang/invoke/MethodType;
    new-instance v1, Ljava/lang/invoke/MethodHandleImpl;

    .line 995
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getArtMethod()J

    move-result-wide v6

    .line 994
    invoke-direct {v1, v6, v7, v8, v2}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    .line 996
    .local v1, "initHandle":Ljava/lang/invoke/MethodHandle;
    new-instance v3, Ljava/lang/invoke/Transformers$Construct;

    invoke-direct {v3, v1, v0}, Ljava/lang/invoke/Transformers$Construct;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    .restart local v3    # "mh":Ljava/lang/invoke/MethodHandle;
    goto :goto_1a
.end method

.method private findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .registers 12
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "kind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1189
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1190
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 1191
    .local v6, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v6, p3, :cond_2f

    .line 1192
    new-instance v0, Ljava/lang/NoSuchFieldException;

    .line 1193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Field has wrong type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1192
    invoke-direct {v0, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1196
    :cond_2f
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method private findAccessor(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/invoke/MethodHandle;
    .registers 15
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p4, "kind"    # I
    .param p5, "performAccessChecks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZ)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p2, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v8, 0xa

    .line 1202
    if-nez p5, :cond_13

    .line 1203
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p2, v5, v6, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 1206
    :cond_13
    const/16 v5, 0x9

    if-eq p4, v5, :cond_19

    if-ne p4, v8, :cond_55

    :cond_19
    const/4 v1, 0x1

    .line 1207
    .local v1, "isStaticKind":Z
    :goto_1a
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    .line 1208
    .local v3, "modifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eq v5, v1, :cond_5b

    .line 1209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1210
    if-eqz v1, :cond_57

    const-string/jumbo v5, "not "

    .line 1209
    :goto_40
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1210
    const-string/jumbo v6, "static"

    .line 1209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1211
    .local v4, "reason":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalAccessException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1206
    .end local v1    # "isStaticKind":Z
    .end local v3    # "modifiers":I
    .end local v4    # "reason":Ljava/lang/String;
    :cond_55
    const/4 v1, 0x0

    .restart local v1    # "isStaticKind":Z
    goto :goto_1a

    .line 1210
    .restart local v3    # "modifiers":I
    :cond_57
    const-string/jumbo v5, ""

    goto :goto_40

    .line 1214
    :cond_5b
    const/16 v5, 0x8

    if-eq p4, v5, :cond_61

    if-ne p4, v8, :cond_8b

    :cond_61
    const/4 v0, 0x1

    .line 1215
    .local v0, "isSetterKind":Z
    :goto_62
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_8d

    if-eqz v0, :cond_8d

    .line 1216
    new-instance v5, Ljava/lang/IllegalAccessException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is final"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1214
    .end local v0    # "isSetterKind":Z
    :cond_8b
    const/4 v0, 0x0

    .restart local v0    # "isSetterKind":Z
    goto :goto_62

    .line 1220
    :cond_8d
    packed-switch p4, :pswitch_data_d2

    .line 1234
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid kind "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1222
    :pswitch_aa
    invoke-static {p3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 1236
    .local v2, "methodType":Ljava/lang/invoke/MethodType;
    :goto_ae
    new-instance v5, Ljava/lang/invoke/MethodHandleImpl;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getArtField()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, p4, v2}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    return-object v5

    .line 1225
    .end local v2    # "methodType":Ljava/lang/invoke/MethodType;
    :pswitch_b8
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v5, p3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .restart local v2    # "methodType":Ljava/lang/invoke/MethodType;
    goto :goto_ae

    .line 1228
    .end local v2    # "methodType":Ljava/lang/invoke/MethodType;
    :pswitch_bf
    invoke-static {p3, p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .restart local v2    # "methodType":Ljava/lang/invoke/MethodType;
    goto :goto_ae

    .line 1231
    .end local v2    # "methodType":Ljava/lang/invoke/MethodType;
    :pswitch_c4
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-static {v5, p2, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .restart local v2    # "methodType":Ljava/lang/invoke/MethodType;
    goto :goto_ae

    .line 1220
    nop

    :pswitch_data_d2
    .packed-switch 0x7
        :pswitch_bf
        :pswitch_c4
        :pswitch_aa
        :pswitch_b8
    .end packed-switch
.end method

.method private findSpecial(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/invoke/MethodType;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p3, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "specialCaller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1132
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1133
    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expected a non-static method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1136
    :cond_26
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1144
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v1

    if-eq p3, v1, :cond_5b

    .line 1145
    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no private access for invokespecial : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1146
    const-string/jumbo v3, ", from"

    .line 1145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1150
    :cond_5b
    new-array v1, v3, [Ljava/lang/Class;

    aput-object p3, v1, v2

    invoke-virtual {p2, v2, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1151
    .local v0, "handleType":Ljava/lang/invoke/MethodType;
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1157
    .end local v0    # "handleType":Ljava/lang/invoke/MethodType;
    :cond_69
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 1158
    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is not assignable from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1162
    :cond_91
    new-array v1, v3, [Ljava/lang/Class;

    aput-object p4, v1, v2

    invoke-virtual {p2, v2, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1163
    .restart local v0    # "handleType":Ljava/lang/invoke/MethodType;
    invoke-static {p1, v3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1
.end method

.method private findVirtualForMH(Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 793
    const-string/jumbo v0, "invoke"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 794
    invoke-static {p2}, Ljava/lang/invoke/MethodHandles;->invoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 795
    :cond_e
    const-string/jumbo v0, "invokeExact"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 796
    invoke-static {p2}, Ljava/lang/invoke/MethodHandles;->exactInvoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 797
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static fixmods(I)I
    .registers 1
    .param p0, "mods"    # I

    .prologue
    .line 550
    and-int/lit8 p0, p0, 0x7

    .line 551
    if-eqz p0, :cond_5

    .end local p0    # "mods":I
    :goto_4
    return p0

    .restart local p0    # "mods":I
    :cond_5
    const/16 p0, 0x8

    goto :goto_4
.end method

.method private hasPrivateAccess()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1579
    iget v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private static initMethodType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 6
    .param p0, "constructorType"    # Ljava/lang/invoke/MethodType;

    .prologue
    const/4 v4, 0x0

    .line 1010
    sget-boolean v1, Ljava/lang/invoke/MethodHandles$Lookup;->-assertionsDisabled:Z

    if-nez v1, :cond_13

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_13

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1014
    :cond_13
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Class;

    .line 1015
    .local v0, "initPtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1016
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1017
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    .line 1016
    const/4 v3, 0x1

    invoke-static {v1, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1020
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method private throwMakeAccessException(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1669
    if-eqz p2, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1670
    :cond_36
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method accessFailedMessage(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/String;
    .registers 7
    .param p3, "mods"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "defc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v2, 0xf

    .line 1630
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1631
    if-eq p2, p1, :cond_38

    .line 1632
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    .line 1633
    :goto_16
    if-nez v0, :cond_32

    iget v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_32

    .line 1634
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v1, v2}, Lsun/invoke/util/VerifyAccess;->isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1635
    if-eq p2, p1, :cond_3c

    .line 1636
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lsun/invoke/util/VerifyAccess;->isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result v0

    .line 1638
    :cond_32
    :goto_32
    if-nez v0, :cond_40

    .line 1639
    const-string/jumbo v1, "class is not public"

    return-object v1

    .line 1631
    :cond_38
    const/4 v0, 0x1

    .local v0, "classOK":Z
    goto :goto_16

    .line 1630
    .end local v0    # "classOK":Z
    :cond_3a
    const/4 v0, 0x0

    .restart local v0    # "classOK":Z
    goto :goto_16

    .line 1635
    .end local v0    # "classOK":Z
    :cond_3c
    const/4 v0, 0x1

    .restart local v0    # "classOK":Z
    goto :goto_32

    .line 1634
    .end local v0    # "classOK":Z
    :cond_3e
    const/4 v0, 0x0

    .restart local v0    # "classOK":Z
    goto :goto_32

    .line 1640
    .end local v0    # "classOK":Z
    :cond_40
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1641
    const-string/jumbo v1, "access to public member failed"

    return-object v1

    .line 1642
    :cond_4a
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1643
    const-string/jumbo v1, "member is private"

    return-object v1

    .line 1644
    :cond_54
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1645
    const-string/jumbo v1, "member is protected"

    return-object v1

    .line 1646
    :cond_5e
    const-string/jumbo v1, "member is private to package"

    return-object v1
.end method

.method public bind(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
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

    .prologue
    .line 1355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 1356
    .local v2, "handle":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v2, p1}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 1357
    .local v0, "adapter":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 1358
    .local v1, "adapterType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1360
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    .line 1359
    invoke-virtual {v0, v3}, Ljava/lang/invoke/MethodHandle;->asVarargsCollector(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 1363
    :cond_24
    return-object v0
.end method

.method checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V
    .registers 8
    .param p3, "mods"    # I
    .param p4, "methName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1585
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "defc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    .line 1587
    .local v0, "allowedModes":I
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1588
    const-class v2, Ljava/lang/Object;

    if-ne p2, v2, :cond_1d

    .line 1589
    const-string/jumbo v2, "clone"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1587
    if-eqz v2, :cond_1d

    .line 1590
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    .line 1587
    if-eqz v2, :cond_1d

    .line 1604
    xor-int/lit8 p3, p3, 0x5

    .line 1607
    :cond_1d
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1609
    xor-int/lit8 p3, p3, 0x4

    .line 1612
    :cond_2b
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    if-eqz v0, :cond_3e

    .line 1613
    return-void

    .line 1614
    :cond_3e
    invoke-static {p3}, Ljava/lang/invoke/MethodHandles$Lookup;->fixmods(I)I

    move-result v1

    .line 1615
    .local v1, "requestedModes":I
    and-int v2, v1, v0

    if-eqz v2, :cond_51

    .line 1616
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, p2, p3, v2, v0}, Lsun/invoke/util/VerifyAccess;->isMemberAccessible(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Class;I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1617
    return-void

    .line 1620
    :cond_51
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_64

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_64

    .line 1621
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2, v2}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    .line 1620
    if-eqz v2, :cond_64

    .line 1622
    return-void

    .line 1625
    :cond_64
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->accessFailedMessage(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p0}, Ljava/lang/invoke/MethodHandles$Lookup;->throwMakeAccessException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1626
    return-void
.end method

.method public findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
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

    .prologue
    .line 964
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 965
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no constructor for array class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 968
    :cond_24
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 969
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v0, :cond_57

    .line 970
    new-instance v1, Ljava/lang/NoSuchMethodException;

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " matching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 970
    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 973
    :cond_57
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    .line 974
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 973
    invoke-virtual {p0, p1, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 976
    invoke-direct {p0, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandleForConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1
.end method

.method public findGetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1184
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public findSetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1257
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public findSpecial(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/MethodType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1097
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "specialCaller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p4, :cond_b

    .line 1098
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "specialCaller == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1101
    :cond_b
    if-nez p3, :cond_16

    .line 1102
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "type == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1105
    :cond_16
    if-nez p2, :cond_21

    .line 1106
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1109
    :cond_21
    if-nez p1, :cond_2c

    .line 1110
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "ref == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1115
    :cond_2c
    invoke-direct {p0, p4}, Ljava/lang/invoke/MethodHandles$Lookup;->checkSpecialCaller(Ljava/lang/Class;)V

    .line 1120
    const-string/jumbo v1, "<"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1121
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid method name."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1124
    :cond_52
    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1125
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v0, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkReturnType(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;)V

    .line 1126
    invoke-direct {p0, v0, p3, p1, p4}, Ljava/lang/invoke/MethodHandles$Lookup;->findSpecial(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1
.end method

.method public findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
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

    .prologue
    .line 781
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 782
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    .line 783
    .local v1, "modifiers":I
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_33

    .line 784
    new-instance v2, Ljava/lang/IllegalAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not static"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 786
    :cond_33
    invoke-direct {p0, v0, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkReturnType(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;)V

    .line 787
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v1, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 788
    const/4 v2, 0x3

    invoke-static {v0, v2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2
.end method

.method public findStaticGetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1280
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public findStaticSetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1303
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 13
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
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

    .prologue
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 884
    const-class v5, Ljava/lang/invoke/MethodHandle;

    if-ne p1, v5, :cond_c

    .line 885
    invoke-direct {p0, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtualForMH(Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 886
    .local v4, "mh":Ljava/lang/invoke/MethodHandle;
    if-eqz v4, :cond_c

    .line 887
    return-object v4

    .line 891
    .end local v4    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_c
    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Ljava/lang/Class;->getInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 892
    .local v3, "method":Ljava/lang/reflect/Method;
    if-nez v3, :cond_70

    .line 899
    :try_start_16
    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 900
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 901
    new-instance v5, Ljava/lang/IllegalAccessException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Method"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is static"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_49} :catch_49

    .line 903
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_49
    move-exception v1

    .line 906
    :cond_4a
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 908
    :cond_70
    invoke-direct {p0, v3, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkReturnType(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;)V

    .line 911
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v5, v6, v7}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 914
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p1, v5, v8

    invoke-virtual {p3, v8, v5}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 915
    .local v0, "handleType":Ljava/lang/invoke/MethodType;
    invoke-static {v3, v8, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    return-object v5
.end method

.method public in(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandles$Lookup;"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, "requestedLookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getClass()Ljava/lang/Class;

    .line 635
    iget-object v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    if-ne p1, v1, :cond_8

    .line 636
    return-object p0

    .line 637
    :cond_8
    iget v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    and-int/lit8 v0, v1, 0xb

    .line 638
    .local v0, "newModes":I
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1c

    .line 639
    iget-object v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    invoke-static {v1, p1}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 638
    if-eqz v1, :cond_1c

    .line 640
    and-int/lit8 v0, v0, -0xb

    .line 643
    :cond_1c
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2c

    .line 644
    iget-object v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    invoke-static {v1, p1}, Lsun/invoke/util/VerifyAccess;->isSamePackageMember(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 643
    if-eqz v1, :cond_2c

    .line 645
    and-int/lit8 v0, v0, -0x3

    .line 647
    :cond_2c
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_3d

    .line 648
    iget-object v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    invoke-static {p1, v1, v2}, Lsun/invoke/util/VerifyAccess;->isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 647
    if-eqz v1, :cond_3d

    .line 651
    const/4 v0, 0x0

    .line 653
    :cond_3d
    invoke-static {p1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->checkUnprivilegedlookupClass(Ljava/lang/Class;I)V

    .line 654
    new-instance v1, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-direct {v1, p1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;I)V

    return-object v1
.end method

.method public lookupClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    return-object v0
.end method

.method public lookupModes()I
    .registers 2

    .prologue
    .line 586
    iget v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public revealDirect(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;
    .registers 9
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 1565
    invoke-static {p1}, Ljava/lang/invoke/MethodHandles;->-wrap0(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;

    move-result-object v0

    .line 1566
    .local v0, "directTarget":Ljava/lang/invoke/MethodHandleImpl;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandleImpl;->reveal()Ljava/lang/invoke/MethodHandleInfo;

    move-result-object v2

    .line 1569
    .local v2, "info":Ljava/lang/invoke/MethodHandleInfo;
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/invoke/MethodHandleInfo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v2}, Ljava/lang/invoke/MethodHandleInfo;->getModifiers()I

    move-result v5

    .line 1570
    invoke-interface {v2}, Ljava/lang/invoke/MethodHandleInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1569
    invoke-virtual {p0, v3, v4, v5, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1b} :catch_1c

    .line 1575
    return-object v2

    .line 1571
    :catch_1c
    move-exception v1

    .line 1572
    .local v1, "exception":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unable to access memeber."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 721
    iget-object v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "cname":Ljava/lang/String;
    iget v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    sparse-switch v1, :sswitch_data_8a

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    sget-boolean v1, Ljava/lang/invoke/MethodHandles$Lookup;->-assertionsDisabled:Z

    if-nez v1, :cond_88

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 724
    :sswitch_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/noaccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 726
    :sswitch_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/public"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 728
    :sswitch_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 730
    :sswitch_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/private"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 732
    :sswitch_87
    return-object v0

    .line 739
    :cond_88
    return-object v0

    .line 722
    nop

    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_33
        0x1 -> :sswitch_48
        0x9 -> :sswitch_5d
        0xb -> :sswitch_72
        0xf -> :sswitch_87
    .end sparse-switch
.end method

.method public unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1393
    if-nez p1, :cond_c

    .line 1394
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "m == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1397
    :cond_c
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 1398
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 1397
    invoke-static {v1, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1401
    .local v0, "methodType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_31

    .line 1402
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 1403
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1402
    invoke-virtual {p0, v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 1406
    :cond_31
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1407
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1409
    :cond_41
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v5, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1410
    invoke-static {p1, v5, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1
.end method

.method public unreflectConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1486
    .local p1, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez p1, :cond_b

    .line 1487
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "c == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1490
    :cond_b
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1491
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    .line 1492
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1491
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 1495
    :cond_24
    invoke-direct {p0, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandleForConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1517
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 1518
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v4, 0x9

    .line 1519
    :goto_14
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 1517
    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 1518
    :cond_1f
    const/4 v4, 0x7

    goto :goto_14
.end method

.method public unreflectSetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1541
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 1542
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v4, 0xa

    .line 1543
    :goto_14
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 1541
    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 1542
    :cond_1f
    const/16 v4, 0x8

    goto :goto_14
.end method

.method public unreflectSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1444
    .local p2, "specialCaller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_b

    .line 1445
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "m == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1448
    :cond_b
    if-nez p2, :cond_16

    .line 1449
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "specialCaller == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1452
    :cond_16
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1453
    invoke-direct {p0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->checkSpecialCaller(Ljava/lang/Class;)V

    .line 1456
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 1457
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 1456
    invoke-static {v1, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1458
    .local v0, "methodType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findSpecial(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1
.end method
