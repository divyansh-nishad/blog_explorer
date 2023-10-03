# Flutter Blog Explorer

Flutter application called "Blog Explorer" that fetches and displays a list of blogs from a RESTful API and provides users with interactive features to explore and engage with the blogs.

## Requirements:

1. **API Integration**:
    - Use Flutter to fetch data from the provided API using the provided curl request. Below both these codes are identical, just then one of them is in curl and other one is in flutter.
2. **Blog List View**:
    - Create a screen that displays a list of blogs.
    - Each blog item should show the blog's title and an image associated with it.
    - Tapping on a blog item should navigate to a detailed view of that blog.
3. **Detailed Blog View**:
    - Implement a screen that shows the full details of a selected blog, including its title and image.
4. **Navigation**:
    - Implement navigation between the blog list view and the detailed blog view.
5. **Interactive Features**:
    - Add interactivity to the app by including the following features:
    - Allow users to mark a blog as a favorite.
6. **State Management**:
    - Utilize Flutter's state management solutions (e.g., `Provider`, `Riverpod`, 'GetX' or `Bloc`) to manage the app's state efficiently.
7. **Error Handling**:
    - Implement error handling to gracefully handle cases where the API is unavailable or returns an error. Display a friendly error message to the user.
8. **UI/UX Design**:
    - Create an attractive and user-friendly UI/UX design for the app.
**Bonus (Optional):**
9. **Offline Mode**:
    - Implement offline support using Flutter's local storage (e.g., SQLite or Hive) so that users can still access and interact with blogs when they are not connected to the internet.

## Installation:

1. Clone the repository.
    ```bash
    git clone <https://github.com/divyansh-nishad/blog_explorer>
    ```
2. Open the project in Android Studio or Visual Studio Code.
3. Navigate to the Project Directory
    ```bash
    cd <project_directory>
    ```
4. Get the dependencies
    ```bash
    flutter pub get
    ```
5. Update Hive Generated Files
    ```bash
    flutter packages pub run build_runner build
    ```
6. Connect your device or emulator.
7. Start the project.
    ```bash
    flutter run
    ```
**Note: If you encounter any issues during the build or run process, carefully read the error messages displayed in the terminal. These messages usually provide valuable information about what went wrong.**



## Screenshots:
| Screenshot 1                                       | Screenshot 2                                       |
|-----------------------------------------------------|-----------------------------------------------------|
| <img src="https://i.ibb.co/pPWsrkM/Whats-App-Image-2023-10-03-at-22-47-46.jpg" width="400"/>       | <img src="https://i.ibb.co/r07752p/Whats-App-Image-2023-10-03-at-22-47-46-1.jpg" width="400"/>       |

<!-- | Screenshot 1                            | Screenshot 2                            |
|-----------------------------------------|-----------------------------------------|
| ![Screenshot 1](https://i.ibb.co/pPWsrkM/Whats-App-Image-2023-10-03-at-22-47-46.jpg)   | ![Screenshot 2](https://i.ibb.co/r07752p/Whats-App-Image-2023-10-03-at-22-47-46-1.jpg)   | -->