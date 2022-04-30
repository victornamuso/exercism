defmodule HighSchoolSweetheart do
  def first_letter(name) do
     name
     |> String.trim()
     |> String.slice(0,1)
  end

  def initial(name) do
    name
    |> first_letter()
    |> String.upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
   String.split(full_name, " ")
   |> Enum.map(&(initial/1))
   |> Enum.join(" ")

  end

  def pair(full_name1, full_name2) do
    fi = initials(full_name1)
    si = initials(full_name2)
               """
                    ******       ******
                  **      **   **      **
                **         ** **         **
               **            *            **
               **                         **
               **     #{fi}  +  #{si}     **
                **                       **
                  **                   **
                    **               **
                      **           **
                        **       **
                          **   **
                            ***
                             *
               """
  end
end
