.class public Ljava/util/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# instance fields
.field private greylist-max-o changed:Z

.field private greylist-max-o obs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    .line 70
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist core-platform-api test-api addObserver(Ljava/util/Observer;)V
    .registers 3
    .param p1, "o"    # Ljava/util/Observer;

    monitor-enter p0

    .line 82
    if-eqz p1, :cond_14

    .line 84
    :try_start_3
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 85
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 87
    .end local p0    # "this":Ljava/util/Observable;
    :cond_10
    monitor-exit p0

    return-void

    .line 81
    .end local p1    # "o":Ljava/util/Observer;
    :catchall_12
    move-exception p1

    goto :goto_1a

    .line 83
    .restart local p1    # "o":Ljava/util/Observer;
    :cond_14
    :try_start_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_12

    .line 81
    .end local p1    # "o":Ljava/util/Observer;
    :goto_1a
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized whitelist core-platform-api test-api clearChanged()V
    .registers 2

    monitor-enter p0

    .line 192
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 193
    monitor-exit p0

    return-void

    .line 191
    .end local p0    # "this":Ljava/util/Observable;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api countObservers()I
    .registers 2

    monitor-enter p0

    .line 215
    :try_start_1
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 215
    .end local p0    # "this":Ljava/util/Observable;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api deleteObserver(Ljava/util/Observer;)V
    .registers 3
    .param p1, "o"    # Ljava/util/Observer;

    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 96
    monitor-exit p0

    return-void

    .line 94
    .end local p0    # "this":Ljava/util/Observable;
    .end local p1    # "o":Ljava/util/Observer;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api deleteObservers()V
    .registers 2

    monitor-enter p0

    .line 170
    :try_start_1
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 171
    monitor-exit p0

    return-void

    .line 169
    .end local p0    # "this":Ljava/util/Observable;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api hasChanged()Z
    .registers 2

    monitor-enter p0

    .line 206
    :try_start_1
    iget-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 206
    .end local p0    # "this":Ljava/util/Observable;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist core-platform-api test-api notifyObservers()V
    .registers 2

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public whitelist core-platform-api test-api notifyObservers(Ljava/lang/Object;)V
    .registers 5
    .param p1, "arg"    # Ljava/lang/Object;

    .line 139
    monitor-enter p0

    .line 156
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Observable;->hasChanged()Z

    move-result v0

    if-nez v0, :cond_9

    .line 157
    monitor-exit p0

    return-void

    .line 158
    :cond_9
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "arrLocal":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Observable;->clearChanged()V

    .line 160
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_23

    .line 162
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_22

    .line 163
    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Observer;

    invoke-interface {v2, p0, p1}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 162
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 164
    .end local v1    # "i":I
    :cond_22
    return-void

    .line 160
    .end local v0    # "arrLocal":[Ljava/lang/Object;
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method protected declared-synchronized whitelist core-platform-api test-api setChanged()V
    .registers 2

    monitor-enter p0

    .line 178
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 179
    monitor-exit p0

    return-void

    .line 177
    .end local p0    # "this":Ljava/util/Observable;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
