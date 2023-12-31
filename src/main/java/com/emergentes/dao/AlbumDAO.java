
package com.emergentes.dao;

import com.emergentes.modelo.Album;
import java.util.List;

public interface AlbumDAO {
    public void insert(Album album) throws Exception;
    public void update(Album album) throws Exception;
    public void delete(int id) throws Exception;
    public Album getById(int id) throws Exception;
    public List<Album> getAll() throws Exception;
}
