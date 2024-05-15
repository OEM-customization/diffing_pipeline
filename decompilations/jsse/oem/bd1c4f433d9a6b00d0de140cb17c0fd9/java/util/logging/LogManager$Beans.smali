.class Ljava/util/logging/LogManager$Beans;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Beans"
.end annotation


# static fields
.field private static final propertyChangeEventClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final propertyChangeListenerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final propertyChangeMethod:Ljava/lang/reflect/Method;

.field private static final propertyEventCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1752
    const-string/jumbo v0, "java.beans.PropertyChangeListener"

    invoke-static {v0}, Ljava/util/logging/LogManager$Beans;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1751
    sput-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeListenerClass:Ljava/lang/Class;

    .line 1755
    const-string/jumbo v0, "java.beans.PropertyChangeEvent"

    invoke-static {v0}, Ljava/util/logging/LogManager$Beans;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1754
    sput-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeEventClass:Ljava/lang/Class;

    .line 1758
    sget-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeListenerClass:Ljava/lang/Class;

    .line 1759
    const-string/jumbo v1, "propertyChange"

    .line 1758
    new-array v2, v5, [Ljava/lang/Class;

    .line 1760
    sget-object v3, Ljava/util/logging/LogManager$Beans;->propertyChangeEventClass:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 1758
    invoke-static {v0, v1, v2}, Ljava/util/logging/LogManager$Beans;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1757
    sput-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeMethod:Ljava/lang/reflect/Method;

    .line 1763
    sget-object v0, Ljava/util/logging/LogManager$Beans;->propertyChangeEventClass:Ljava/lang/Class;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    .line 1764
    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 1765
    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v5

    .line 1766
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1767
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 1763
    invoke-static {v0, v1}, Ljava/util/logging/LogManager$Beans;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1762
    sput-object v0, Ljava/util/logging/LogManager$Beans;->propertyEventCtor:Ljava/lang/reflect/Constructor;

    .line 1750
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1771
    :try_start_0
    const-class v1, Ljava/util/logging/LogManager$Beans;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 1772
    :catch_c
    move-exception v0

    .line 1773
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static varargs getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1778
    if-nez p0, :cond_4

    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    goto :goto_3

    .line 1779
    :catch_9
    move-exception v0

    .line 1780
    .local v0, "x":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1786
    if-nez p0, :cond_4

    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    goto :goto_3

    .line 1787
    :catch_9
    move-exception v0

    .line 1788
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static invokePropertyChange(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p0, "listener"    # Ljava/lang/Object;
    .param p1, "ev"    # Ljava/lang/Object;

    .prologue
    .line 1827
    :try_start_0
    sget-object v3, Ljava/util/logging/LogManager$Beans;->propertyChangeMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1838
    return-void

    .line 1830
    :catch_c
    move-exception v2

    .line 1831
    .local v2, "x":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1832
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_18

    .line 1833
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 1834
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_18
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_1f

    .line 1835
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 1836
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1f
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1828
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "x":Ljava/lang/reflect/InvocationTargetException;
    :catch_25
    move-exception v1

    .line 1829
    .local v1, "x":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method static isBeansPresent()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1796
    sget-object v1, Ljava/util/logging/LogManager$Beans;->propertyChangeListenerClass:Ljava/lang/Class;

    if-eqz v1, :cond_a

    .line 1797
    sget-object v1, Ljava/util/logging/LogManager$Beans;->propertyChangeEventClass:Ljava/lang/Class;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 1796
    :cond_a
    return v0
.end method

.method static newPropertyChangeEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1808
    :try_start_0
    sget-object v3, Ljava/util/logging/LogManager$Beans;->propertyEventCtor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_14} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_14} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v3

    return-object v3

    .line 1811
    :catch_16
    move-exception v2

    .line 1812
    .local v2, "x":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1813
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_22

    .line 1814
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 1815
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_22
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_29

    .line 1816
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 1817
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_29
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1809
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "x":Ljava/lang/reflect/InvocationTargetException;
    :catch_2f
    move-exception v1

    .line 1810
    .local v1, "x":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
