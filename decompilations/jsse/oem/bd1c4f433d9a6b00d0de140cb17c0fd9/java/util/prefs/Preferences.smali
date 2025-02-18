.class public abstract Ljava/util/prefs/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field public static final MAX_KEY_LENGTH:I = 0x50

.field public static final MAX_NAME_LENGTH:I = 0x50

.field public static final MAX_VALUE_LENGTH:I = 0x2000

.field private static factory:Ljava/util/prefs/PreferencesFactory;

.field private static prefsPerm:Ljava/security/Permission;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 228
    invoke-static {}, Ljava/util/prefs/Preferences;->findPreferencesFactory()Ljava/util/prefs/PreferencesFactory;

    move-result-object v0

    sput-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    .line 392
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string/jumbo v1, "preferences"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/prefs/Preferences;->prefsPerm:Ljava/security/Permission;

    .line 225
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    return-void
.end method

.method private static findPreferencesFactory()Ljava/util/prefs/PreferencesFactory;
    .registers 4

    .prologue
    .line 233
    const-class v3, Ljava/util/prefs/PreferencesFactory;

    invoke-static {v3}, Ljava/util/ServiceLoader;->loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/prefs/PreferencesFactory;

    .line 234
    .local v2, "result":Ljava/util/prefs/PreferencesFactory;
    if-eqz v2, :cond_b

    .line 235
    return-object v2

    .line 238
    :cond_b
    const-class v3, Ljava/util/prefs/PreferencesFactory;

    invoke-static {v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "impl$iterator":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/prefs/PreferencesFactory;

    .line 239
    .local v0, "impl":Ljava/util/prefs/PreferencesFactory;
    return-object v0

    .line 242
    .end local v0    # "impl":Ljava/util/prefs/PreferencesFactory;
    :cond_22
    new-instance v3, Ljava/util/prefs/FileSystemPreferencesFactory;

    invoke-direct {v3}, Ljava/util/prefs/FileSystemPreferencesFactory;-><init>()V

    return-object v3
.end method

.method public static importPreferences(Ljava/io/InputStream;)V
    .registers 1
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    .prologue
    .line 1219
    invoke-static {p0}, Ljava/util/prefs/XmlSupport;->importPreferences(Ljava/io/InputStream;)V

    .line 1220
    return-void
.end method

.method private static nodeName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v5, 0x2e

    const/4 v4, 0x0

    .line 376
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 377
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 378
    const-string/jumbo v4, "Arrays have no associated preferences node."

    .line 377
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 379
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 381
    .local v2, "pkgEndIndex":I
    if-gez v2, :cond_20

    .line 382
    const-string/jumbo v3, "/<unnamed>"

    return-object v3

    .line 383
    :cond_20
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static setPreferencesFactory(Ljava/util/prefs/PreferencesFactory;)Ljava/util/prefs/PreferencesFactory;
    .registers 2
    .param p0, "pf"    # Ljava/util/prefs/PreferencesFactory;

    .prologue
    .line 250
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    .line 251
    .local v0, "previous":Ljava/util/prefs/PreferencesFactory;
    sput-object p0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    .line 252
    return-object v0
.end method

.method public static systemNodeForPackage(Ljava/lang/Class;)Ljava/util/prefs/Preferences;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/prefs/Preferences;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-static {p0}, Ljava/util/prefs/Preferences;->nodeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public static systemRoot()Ljava/util/prefs/Preferences;
    .registers 2

    .prologue
    .line 429
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 430
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 431
    sget-object v1, Ljava/util/prefs/Preferences;->prefsPerm:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 433
    :cond_b
    sget-object v1, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    invoke-interface {v1}, Ljava/util/prefs/PreferencesFactory;->systemRoot()Ljava/util/prefs/Preferences;

    move-result-object v1

    return-object v1
.end method

.method public static userNodeForPackage(Ljava/lang/Class;)Ljava/util/prefs/Preferences;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/prefs/Preferences;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-static {p0}, Ljava/util/prefs/Preferences;->nodeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public static userRoot()Ljava/util/prefs/Preferences;
    .registers 2

    .prologue
    .line 408
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 409
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 410
    sget-object v1, Ljava/util/prefs/Preferences;->prefsPerm:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 412
    :cond_b
    sget-object v1, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    invoke-interface {v1}, Ljava/util/prefs/PreferencesFactory;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract absolutePath()Ljava/lang/String;
.end method

.method public abstract addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
.end method

.method public abstract addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
.end method

.method public abstract childrenNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract clear()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract exportNode(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract exportSubtree(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getByteArray(Ljava/lang/String;[B)[B
.end method

.method public abstract getDouble(Ljava/lang/String;D)D
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract isUserNode()Z
.end method

.method public abstract keys()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
.end method

.method public abstract nodeExists(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract parent()Ljava/util/prefs/Preferences;
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)V
.end method

.method public abstract putByteArray(Ljava/lang/String;[B)V
.end method

.method public abstract putDouble(Ljava/lang/String;D)V
.end method

.method public abstract putFloat(Ljava/lang/String;F)V
.end method

.method public abstract putInt(Ljava/lang/String;I)V
.end method

.method public abstract putLong(Ljava/lang/String;J)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract removeNode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
.end method

.method public abstract removePreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
.end method

.method public abstract sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
