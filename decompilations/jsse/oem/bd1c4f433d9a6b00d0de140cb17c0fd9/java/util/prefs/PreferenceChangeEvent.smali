.class public Ljava/util/prefs/PreferenceChangeEvent;
.super Ljava/util/EventObject;
.source "PreferenceChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = 0xb03e03d54d2278fL


# instance fields
.field private key:Ljava/lang/String;

.field private newValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "node"    # Ljava/util/prefs/Preferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 72
    iput-object p2, p0, Ljava/util/prefs/PreferenceChangeEvent;->key:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Ljava/util/prefs/PreferenceChangeEvent;->newValue:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/io/NotSerializableException;

    const-string/jumbo v1, "Not serializable."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/io/NotSerializableException;

    const-string/jumbo v1, "Not serializable."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Ljava/util/prefs/PreferenceChangeEvent;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Ljava/util/prefs/PreferenceChangeEvent;->newValue:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/util/prefs/Preferences;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/util/prefs/PreferenceChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/prefs/Preferences;

    return-object v0
.end method